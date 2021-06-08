class CartsController < ApplicationController
  def show
    @items = Item.all
  end
end
