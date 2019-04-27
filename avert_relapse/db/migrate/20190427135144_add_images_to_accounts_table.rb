class AddImagesToAccountsTable < ActiveRecord::Migration[5.2]
  def change
  	add_column :accounts, :profile_pic, :string
  end
end
