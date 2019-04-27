class CreateFriends < ActiveRecord::Migration[5.2]
  def change
    create_table :friends do |t|
      t.integer :account_id
      t.string :first_name
      t.string :last_name
      t.string :email

      t.timestamps
    end
  end
end
