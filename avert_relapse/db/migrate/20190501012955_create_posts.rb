class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :text
      t.string :published_date
      t.string :account_id

      t.timestamps
    end
  end
end
