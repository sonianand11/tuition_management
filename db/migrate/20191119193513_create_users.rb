class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :linked_in
      t.string :twitter
      t.boolean :verified
      t.boolean :premium

      t.timestamps
    end
  end
end
