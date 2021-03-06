class CartItemsController < ApplicationController

  def create
    @cart_item = CartItem.new
    @cart_item.item_id = params[:cart_item][:item_id]
    @cart_item.cart_id = params[:cart_id]
    @cart_item.status = "added"
    @cart_item.quantity = params[:cart_item][:quantity]
    @cart_item.save!
    #redirect_to cart_path(@cart_item.cart_id)
    redirect_to restaurant_path(@cart_item.item.restaurant_id)
  end

  def update
    @cart_item = CartItem.where(id: params[:id]).first
    @cart_item.status = "delivered"
    @cart_item.save
    redirect_to restaurant_carts_path(@cart_item.item.restaurant.id)
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart = @cart_item.cart
    @cart_item.destroy
    redirect_to cart_path(@cart.id)

  end

end
