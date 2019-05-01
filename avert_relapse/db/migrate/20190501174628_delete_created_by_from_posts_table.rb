class DeleteCreatedByFromPostsTable < ActiveRecord::Migration[5.2]
  def change
  	remove_column :posts, :created_by, :string
  end
end
