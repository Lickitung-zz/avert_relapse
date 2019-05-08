class AddNameToCommentsTable < ActiveRecord::Migration[5.2]
  def change
  	add_column :comments, :published_by, :string
  end
end
