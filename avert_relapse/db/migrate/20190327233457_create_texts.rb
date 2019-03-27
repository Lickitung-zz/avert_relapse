class CreateTexts < ActiveRecord::Migration[5.2]
  def change
    create_table :texts do |t|
      t.string :text
      t.integer :account_id

      t.timestamps
    end
  end
end
