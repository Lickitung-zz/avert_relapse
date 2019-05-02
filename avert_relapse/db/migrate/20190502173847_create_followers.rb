class CreateFollowers < ActiveRecord::Migration[5.2]
  def change
    create_table :followers do |t|
      t.integer :following_account_id
      t.id :followed_account_id

      t.timestamps
    end
  end
end
