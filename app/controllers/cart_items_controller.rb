class CartItemsController < ApplicationController

  def create
    @cart_item = CartItem.new
    @cart_item.item_id = params[:item_id]
    @cart_item.cart_id = params[:cart_id]
    @cart_item.status = "added"
    @cart_item.quantity = 1.0
    @cart_item.save
    redirect_to cart_path(@cart_item.cart_id)
  end

  def update

  end


  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
  end

private

end
