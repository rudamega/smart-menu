class CartsController < ApplicationController
  def index
    @restaurant = Restaurant.find_by(user_id: current_user)
    @places = Place.where(restaurant: @restaurant)
    @carts = Cart.where(place: @places)
  end

  def show
    @cart = current_user.cart
    @cart_items = CartItem.where(cart_id: @cart)
  end

  def new
  end

  def create
    @cart = Cart.new
    @cart.place_id = params[:place_id]
    @cart.user_id = current_user.id
    @cart.save
    @place = Place.find(params[:place_id])
    @restaurant = @place.restaurant
    redirect_to restaurant_path(@restaurant)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private


end
