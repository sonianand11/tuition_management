class Tuition < ApplicationRecord
  delegate :url_helpers, to: 'Rails.application.routes' 

  has_many :tuition_users
  belongs_to :teacher,foreign_key: :user_id, class_name: "User"

  after_create :notify_on_slack

  validates_presence_of :title, :description, :user_id

  def notify_on_slack
    slack_client = SlackBotService.new
    slack_client.deliver(build_slack_message)
  end

  def build_slack_message
    teacher = self.teacher

    msg =  <<-EOF
      Teacher : #{teacher.name}
      Meeting Link : #{self.meeting_link}
      class content : ```#{self.description}```
      start at : #{self.start_at}
      ends at : #{self.end_at}
      Quick link : #{url_helpers.tuition_url(self)}
    EOF

    msg
  end
end
