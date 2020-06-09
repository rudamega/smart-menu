class ItemsController < ApplicationController
  def show
  end

  def new
    @item = Item.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @item = Item.new(item_params)
    @item.restaurant_id = params[:restaurant_id]
    @item.save
    redirect_to restaurant_path(@item.restaurant_id)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def item_params
    params.require(:item).permit(:name, :description, :category, :price)
  end

end
