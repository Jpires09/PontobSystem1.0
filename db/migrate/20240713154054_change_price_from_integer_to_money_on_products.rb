class ChangePriceFromIntegerToMoneyOnProducts < ActiveRecord::Migration[7.1]
  def change
    add_money :products, :price
  end
end
