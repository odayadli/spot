class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @service = Service.find(params[:surfboard_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.service = Service.find(params[:surfboard_id])
    @booking.client = current_user
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
      redirect_to service_path
    else
      render :edit
    end
  end

  def my_bookings
    now = DateTime.now
    @current_bookings = current_user.bookings.where("end_date > ?", now)
    @old_bookings = current_user.bookings.where("end_date < ?", now)
  end

end
