class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show ]
  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR category ILIKE :query"
      @restaurants = Restaurant.where(sql_query, query: "%#{params[:query]}%")
    else
      @restaurants = Restaurant.all
    end

  end

  def my_restaurant
    @restaurants = Restaurant.where(user: current_user)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @carts = Cart.where(user: current_user)
    @carts = @carts.first
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
