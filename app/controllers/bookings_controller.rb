class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    @service = Service.find(params[:service_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.service = Service.find(params[:service_id])
    @booking.trainee = current_user
    if @booking.save!
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.service = Service.find(@booking.service_id)
    if @booking.update!(booking_params)
      redirect_to service_path(@booking)
    else
      render :edit
    end
  end

  def my_bookings
    now = DateTime.now
    @current_bookings = current_user.bookings.where('end_date > ?', now)
    @old_bookings = current_user.bookings.where('end_date < ?', now)
  end

  def bookings_requests
    @bookings_requested = Booking.select { |booking| booking.service.trainer == current_user }
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.client = current_user
    @booking.destroy
    redirect_to my_bookings_bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
