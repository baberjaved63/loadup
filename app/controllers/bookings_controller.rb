class BookingsController < ApplicationController
  before_action :find_booking, only: :show

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.set_total_charge
    render :new and return unless @booking.save

    render :show
  end

  def show; end

  private

  def find_booking
    @booking = Booking.find_by_id params[:id]
    redirect_to root_path unless @booking
  end

  def booking_params
    params.require(:booking).permit(:first_name, :last_name, :animal_name, :animal_type, :hours, :service_date)
  end
end
