class AddProfilePicToCommentsTable < ActiveRecord::Migration[5.2]
  def change
  	add_column :comments, :profile_pic, :string
  end
end
