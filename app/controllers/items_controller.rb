class ItemsController < ApplicationController
  
  def new 
    @item = Item.new
  end

  def index
    @items = Item.all 
    a = @items.sort_by(&:price)
    @stars = a.last(3)
  end

  def show
    @items = Item.find(params[:id])

    #rand items
    @rand_items = []
    3.times do
    rand_item = Item.find(Item.all.sample.id)
    @rand_items << rand_item 
    end
  end

  def create
    @item = Item.create(item_params) 
  end

  private 

  def item_params
    params.permit(:title, :description, :price, :image_url)
  end
  
end
