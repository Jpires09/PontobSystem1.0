class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
    @groups = @employee.groups if @employee.position == "Professor"
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new
  end

  def edit
  end

  def update
  end

  def destroy
  end
end