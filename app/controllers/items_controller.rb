class ItemsController < ApplicationController
  
  def new 
    @item = Item.new
  end

  def index
    @items = Item.all 
  end

  def create
    @item = Item.create(item_params) 
  end

  private 

  def item_params
    params.permit(:title, :description, :price, :image_url)
  end
  
end
