class CartsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    @cart = Cart.new
    @cart.place_id = place_id
    @cart.user_id = current_user.id
    @cart.save
    raise
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

 
end
 