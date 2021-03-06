class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    # @category.services = Service.find(params[:service_id])
    if @category.save!
      redirect_to services_path
    else
      render :new
    end
  end

  def category_params
    params.require(:category).permit(:name, :service_id)
  end
end
