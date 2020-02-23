class SlackBotService

  GOOD = 'good'
  WARNING = 'warning'
  DANGER = 'danger'

  def client
    Slack::Notifier.new(ENV['SLACK_WEBHOOK_URL'], channel: ENV['SLACK_WEBHOOK_CHANNEL'], username: 'Tuition Alert',icon_emoji: ':bell:')
  end

  def deliver(message = "")
    begin
      client.ping message
    rescue => e
      Rails.logger.error("SlackbotService: Error when sending: #{e.message}")
    end
  end

end