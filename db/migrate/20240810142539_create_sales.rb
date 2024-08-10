class CreateSales < ActiveRecord::Migration[7.1]
  def change
    create_table :sales do |t|
      t.string :product
      t.integer :quantity
      t.decimal :price
      t.decimal :total
      t.date :date
      t.references :cash_register, null: false, foreign_key: true

      t.timestamps
    end
  end
end
