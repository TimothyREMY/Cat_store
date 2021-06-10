class CartsController < ApplicationController

  def new
    @cart = Cart.new
  end

  def create
    if user_signed_in?
      @cart = Cart.create(user: current_user)
      puts "Nouveau panier créé"
    end
  end

  def show
    @items = Item.all
    @cart = Cart.find_by(user_id: current_user.id)
    
  end

  def index
    @items = Item.all
    @cart = Cart.find_by(user_id: current_user.id)
  end


end
