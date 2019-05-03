class AddLikesAndDislikesToPostsTable < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :likes, :string
    add_column :posts, :dislikes, :string
  end
end
