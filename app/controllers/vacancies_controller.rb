class VacanciesController < ApplicationController
  # AR to find value of vacant from both vacancy and flat table
  #  Vacancy.joins(:flat).where(flat: { country: "USA" }).where(date: Date.new(2023, 6, 1))[0].vacant
  before_action :set_flat, only: %i[create]
  # after_action :verify_authorized, except: [:edit, :update]

  def show
    @vacancy = Booking.find(vacancy_params)
  end

  def vacancy_params
    params.require(:vacancy).permit(:date, :vacant, :flat_id)
  end

end
