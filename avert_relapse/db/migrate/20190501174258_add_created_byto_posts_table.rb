class AddCreatedBytoPostsTable < ActiveRecord::Migration[5.2]
  def change
  	add_column :posts, :published_by, :string
  end
end
