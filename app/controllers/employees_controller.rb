class EmployeesController < ApplicationController
  # GET /employees
  def index
    @employees = Employee.all
  end

  # GET /employees/:id
  def show
    @employee = Employee.find(params[:id])
    @groups = @employee.groups if @employee.position == "Professor"
  end

  # GET /employees/new
  def new
    @employee = Employee.new
  end

  # POST /employees
  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to @employee, notice: 'Funcionário criado com sucesso.'
    else
      render :new
    end
  end

  # GET /employees/:id/edit
  def edit
    @employee = Employee.find(params[:id])
  end

  # PATCH/PUT /employees/:id
  def update
    @employee = Employee.find(params[:id])
    if @employee.update(employee_params)
      redirect_to @employee, notice: 'Funcionário atualizado com sucesso.'
    else
      render :edit
    end
  end

  # DELETE /employees/:id
  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to employees_url, notice: 'Funcionário excluído com sucesso.'
  end

  private

  # Strong parameters for employee
  def employee_params
    params.require(:employee).permit(:name, :position, :admition)
  end
end
