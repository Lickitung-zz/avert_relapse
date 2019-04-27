class AddCoverPhotoToAccountsTable < ActiveRecord::Migration[5.2]
  def change
  	add_column :accounts, :cover_photo, :string
  end
end
