class PlacesController < ApplicationController
  def index
    @places = Place.where(restaurant_id: params[:restaurant_id])
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
