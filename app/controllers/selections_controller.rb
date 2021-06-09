class SelectionsController < ApplicationController

  def new
    @selection = Selection.new
  end

  def create
    @selection = Selection.new
    @selection.cart = Cart.find(current_user.id)
    @selection.item_id = params[:item_id]
    if @selection.save
      flash[:success] = "Photo ajoutée au panier!"
      puts "Succès ! #{@selection.item_id} a été ajouté au panier #{Cart.find(@current_user.id)}"
      redirect_to(root_path)
    else
      flash[:error] = @selection.errors.messages
      puts "Nul !"
      redirect_to(root_path)
    end
  end

  def destroy
    @cart = Cart.find(current_user.id)
    @selection = Selection.find(params[:id])
    @selection.destroy
    flash[:success] = "Photo supprimée au panier!"
      puts "Succès ! #{@selection.item_id} a été supprimé du panier #{Cart.find(@current_user.id)}"
      redirect_to cart_path(@cart.id)
  end

end