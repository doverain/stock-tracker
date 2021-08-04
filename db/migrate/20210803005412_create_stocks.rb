class CreateStocks < ActiveRecord::Migration[6.1]
  def change
    create_table :stocks do |t|
      t.integer :user_id
      t.string :ticker
      t.decimal :price
      t.datetime :date

      t.timestamps
    end
    add_index :stocks, :user_id
    add_index :stocks, :ticker
  end
end
