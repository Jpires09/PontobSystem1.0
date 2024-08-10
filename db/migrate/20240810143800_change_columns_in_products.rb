class ChangeColumnsInProducts < ActiveRecord::Migration[7.1]
  def change
    change_column :products, :description, :text
    remove_column :products, :price_cents
    add_column :products, :price, :decimal
  end
end
