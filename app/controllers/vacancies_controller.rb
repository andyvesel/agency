class VacanciesController < ApplicationController
  def index
    @vacancies = Vacancy.all
  end

  def new    
  end

  def create
    @vacancy = Vacancy.new(vacancy_params)

    if @vacancy.valid?
      @vacancy.save

      redirect_to vacancies_path
    else
      render action: 'new'
    end

  end


  private

  def vacancy_params
    params.require(:vacancy).permit(:title, :added, :expiration, :salary, :contacts)
  end
end
