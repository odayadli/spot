class ServicesController < ApplicationController
  before_action :find_service, only: %i[show edit update destroy]

  def index
    @services = Service.all
  end

  def show
  end

  def new
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
    params.require(:service).permit(:name, :details, :price_per_hour, :photo, :address, :indoor)
  end

  def find_service
    @service = Service.find(params[:id])
  end
end
