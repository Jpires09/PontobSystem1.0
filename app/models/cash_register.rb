class CashRegister < ApplicationRecord
  has_many :sales, dependent: :destroy

  def calculate_closing_balance
    self.closing_balance = opening_balance + total_sales - total_expenses
  end
end
