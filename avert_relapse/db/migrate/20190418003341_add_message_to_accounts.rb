class AddMessageToAccounts < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :messages, :string
  end
end
