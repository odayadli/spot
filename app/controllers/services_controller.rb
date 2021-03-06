class ServicesController < ApplicationController
  before_action :find_service, only: %i[show edit update destroy]

  def index
    @services = if params[:search].present?
                  Service.where('service_address ILIKE :search', search: "%#{params[:search]}%")
                else
                  Service.all
                end

    @markers = @services.geocoded.map do |service|
      {
        lat: service.latitude,
        lng: service.longitude,
        infoWindow: render_to_string(partial: 'info_window', locals: { service: service }),
        image_url: helpers.asset_url('service.jpg')
      }
    end
  end

  def my_services
    @services = current_user.services
  end

  def show; end

  def new
    @categories = Category.all
    @service = Service.new
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
    params.require(:service).permit(:name, :details, :price_per_hour, :photo, :address, :indoor, :category_id, :search)
  end

  def find_service
    @service = Service.find(params[:id])
  end
end
