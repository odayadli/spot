class ReviewsController < ApplicationController
  before_action :find_booking

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.booking = @booking
    @review.user = current_user
    @review.save
    redirect_to service_path(@booking.service_id)
  end


  private

  def find_booking
    @booking = Booking.find(params[:booking_id])
  end

  def review_params
    params.require(:review).permit(:description, :rating)
  end
end
