class ServicesController < ApplicationController
  before_action :find_service, only: %i[show edit update destroy]

  def index
    @services = if params[:search].present?
                  Service.where('service_address ILIKE :search', search: "%#{params[:search]}%")
                elsif params[:tag].present?
                  Service.where('service_address ILIKE :tag', tag: "%#{params[:tag]}%")
                else
                  Service.all

                end
    unless params[:service_address].blank?
      @service = Service.select { |v| v.service_address == params[:service_address] }
    end

    @markers = @services.geocoded.map do |service|
      {
        lat: service.latitude,
        lng: service.longitude,
        infoWindow: render_to_string(partial: 'info_window', locals: { service: service }),
        image_url: helpers.asset_url('dumbell.png')
      }
    end
  end

  def filter
    @services = case params[:order]
                when 'Price High to Low'
                  Service.order(price_per_hour: :desc)
                when 'Price Low to High'
                  Service.order(price_per_hour: :asc)
                else
                  Service.all
                end

    @services = case params[:search]
                when '1km'
                  Service.near('service_address', 1)
                when '5km'
                  Service.near('service_address', 5)
                when '10km'
                  Service.near('service_address', 10)
                when '20km'
                  Service.near('service_address', 20)
                else
                  Service.all
                end
  end

  def my_services
    @services = current_user.services
  end

  def show
    @marker =
      [{
        lat: @service.latitude,
        lng: @service.longitude,
        infoWindow: render_to_string(partial: 'info_window', locals: { service: @service }),
        image_url: helpers.asset_url('dumbell.png')
      }]
    @bookings = @service.bookings.order(:start_date)
    @booking = Booking.new
  end

  def new
    @service = Service.new
    @categories = Category.all
  end

  def create
    @service = Service.new(service_params)
    @service.trainer = current_user
    if @service.save!
      redirect_to service_path(@service)
    else
      render :new
    end
  end

  def edit; end

  def update
    @service.update!(service_params)
    redirect_to service_path(@service)
  end

  def destroy
    @service.destroy
    redirect_to services_path
  end

  private

  def service_params
    params.require(:service).permit(:name, :details, :price_per_hour, :photo, :service_address, :indoor, :category_id, :search)
  end

  def find_service
    @service = Service.find(params[:id])
  end
end
