class FlatsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @flats ||= filter

    @markers = @flats.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end
  end

  def show
    @flat = Flat.find(params[:id])
    @booking = Booking.new
    authorize @flat
    @markers = [{
      lat: @flat.latitude,
      lng: @flat.longitude,
      info_window_html: render_to_string(partial: "info_window", locals: {flat: @flat})
    }]
  end

  def new
    @flat = Flat.new
    authorize @flat
  end

  def create
    @flat = Flat.new(flat_params)
    authorize @flat
    @flat.owner = current_user
    @flat.save!
    redirect_to flat_path(@flat)
  end

  def edit
    @flat = Flat.find(params[:id])
    authorize @flat
  end

  def update
    @flat = Flat.find(params[:id])
    authorize @flat
    @flat.update(flat_params)
    redirect_to flat_path(@flat.id)
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :description, :price_per_night, :address_one, :zipode, :country, :capacity, :photo)
  end

  def filter
    @flats = policy_scope(Flat)
    @flats = @flats.search_by_location(params[:search]) if params[:search].present?
    @flats = @flats.where("capacity >= ?", params[:guests]) if params[:guests].present?
    if params[:in].present? && params[:out].present?
      date_array = (params[:in]..params[:out]).map(&:to_s)
      available_flats = []
      @flats.each do |flat|
        unavailable_dates = []
        date_array.each do |date|
          unavailable_dates << date unless Vacancy.where(date: date.to_date, flat_id: flat.id, vacant: true).exists?
        end
        available_flats << flat if unavailable_dates.empty?
      end
      @Flats = available_flats

      @flats
    else
      @flats
    end
    # raise
  end
end
