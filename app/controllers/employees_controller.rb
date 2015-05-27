class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.valid?
      @employee.save

      redirect_to employees_path
    else
      render action: 'new'
    end
  end

  private
  
  def employee_params
    params.require(:employee).permit(:name, :contact, :search, :salary)
  end
end
