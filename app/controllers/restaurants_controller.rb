class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show ]
  def index
    @restaurants = Restaurant.all
  end

  def my_restaurant
    @restaurants = Restaurant.where(user: current_user)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.user = current_user
    if @restaurant.save
      redirect_to my_restaurant_path
    else
      render(new)
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def restaurant_params
  params.require(:restaurant).permit(:name, :address, :phone, :email, :category)
  end
end
