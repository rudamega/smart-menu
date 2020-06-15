class CartsController < ApplicationController
  def index
    #@restaurant = Restaurant.find_by(user_id: current_user)
    @cart_items_ordered = CartItem.where(status: "ordered")
    @cart_items_delivered = CartItem.where(status: "delivered")
    @carts = Cart.all
  end

  def show
    @cart = current_user.cart
    @cart_items = CartItem.where(cart_id: @cart)
    @cart_items_added = @cart_items.where(status: "added")
    @cart_items_ordered = @cart_items.where(status: "ordered")
    @cart_items_delivered = @cart_items.where(status: "delivered")
    @cart_items_payed = @cart_items.where(status: "payed")
  end

  def new
  end

  def my_services
    @restaurant = params[:restaurant_id]
    @restaurant = @restaurant.to_i
    @cart_items = CartItem.all
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
    @cart = current_user.cart
    @cart_items = CartItem.where(cart_id: @cart)
    @cart_items_added = @cart_items.where(status: "added")
    @cart_items_added.each do |item|
    item.status = "ordered"
    item.save
    end
    redirect_to cart_path(current_user.cart)
  end

  def destroy
  end

  private


end
