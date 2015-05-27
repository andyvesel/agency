class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def new
  end

  def create
    @employee = Employee.new(employee_params)
    @employee.save

    redirect_to employees_path
  end

  private
  def employee_params
    params.require(:employee).permit(:name, :contact, :search, :salary)
  end
end
