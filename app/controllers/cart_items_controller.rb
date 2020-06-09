class CartItemsController < ApplicationController
  def index
    @cart_items = Cart_item.where(user: current_user).where(status: added)
  end

  def news
    @cart_item = Cart_item.new
  end

  def create
    @cart_item = Cart_item.new(cart_item_params)
  end


  def destroy
    @cart_item = Cart_item.find(params[:id])
    @cart_item.destroy
    redirect_to cart_items_path
  end

private

  def cart_item_params
    params.require(:cart_item).permit(:item_id, :cart_id, :quantity, :status)
  end
end
