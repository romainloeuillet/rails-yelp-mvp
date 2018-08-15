class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create!(params.require(:restaurant).permit(:name, :address, :phone_number, :category))
    redirect_to restaurant_path(@restaurant)
  end
end
