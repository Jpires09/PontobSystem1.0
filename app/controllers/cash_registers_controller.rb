class CashRegistersController < ApplicationController
  def new
    @cash_register = CashRegister.new
  end

  def create
    @cash_register = CashRegister.new(cash_register_params)
    @cash_register.total_sales = @cash_register.sales.sum(:total)
    @cash_register.calculate_closing_balance

    if @cash_register.save
      redirect_to @cash_register, notice: 'Register was successfully created.'
    else
      render :new
    end
  end

  def show
    @cash_register = CashRegister.find(params[:id])
    @sales = @cash_register.sales
  end

  private

  def cash_register_params
    params.require(:cash_register).permit(:date, :opening_balance, :total_expenses)
  end
end