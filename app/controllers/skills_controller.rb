class SkillsController < ApplicationController
  def create
    @employee = Employee.find(params[:employee_id])
    @employee.skills.create(skill_params)

    redirect_to employee_path(@employee)
  end

  private

  def skill_params
    params.require(:skill).permit(:title)
  end
end
