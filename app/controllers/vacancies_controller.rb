class VacanciesController < ApplicationController
  # AR to find value of vacant from both vacancy and flat table
  #  Vacancy.joins(:flat).where(flat: { country: "USA" }).where(date: Date.new(2023, 6, 1))[0].vacant
end
