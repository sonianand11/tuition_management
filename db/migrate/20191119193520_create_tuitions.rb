class CreateTuitions < ActiveRecord::Migration[6.0]
  def change
    create_table :tuitions do |t|
      t.string :title
      t.text :description
      t.string :meeting_link
      t.integer :user_id
      t.datetime :start_at
      t.datetime :end_at

      t.timestamps
    end
  end
end
