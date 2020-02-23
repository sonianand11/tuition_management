class CreateTuitionUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :tuition_users do |t|
      t.integer :tuition_id
      t.integer :user_id

      t.timestamps
    end
  end
end
