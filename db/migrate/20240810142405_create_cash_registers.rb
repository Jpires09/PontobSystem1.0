class CreateCashRegisters < ActiveRecord::Migration[7.1]
  def change
    create_table :cash_registers do |t|
      t.decimal :opening_balance
      t.decimal :closing_balance
      t.date :date

      t.timestamps
    end
  end
end
