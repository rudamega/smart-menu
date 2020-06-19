class PlacesController < ApplicationController
  def index
    @places = Place.where(restaurant_id: params[:restaurant_id])
  end

  def show
  end

  def new
    @place= Place.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @place = Place.new(place_params)
    @place.restaurant_id = params[:restaurant_id]
    @place.save
    redirect_to restaurant_path(@place.restaurant_id)
  end

  def edit
  end

  def update
  end

  def destroy
  end
  private
  def place_params
    params.require(:place).permit(:name)
  end


end
