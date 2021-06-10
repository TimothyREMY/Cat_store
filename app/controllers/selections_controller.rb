class SelectionsController < ApplicationController

  def new
    @selection = Selection.new
  end

  def create
    @selection = Selection.new
    @selection.cart = Cart.find_by(user_id: current_user.id)
    @selection.item_id = params[:item_id]
    if @selection.save
      flash[:success] = "Photo ajoutée au panier!"
      puts "Succès ! #{@selection.item_id} a été ajouté au panier #{Cart.find_by(user_id: current_user.id)}"
      respond_to do |format|
        format.html {redirect_to root_path}
        format.js { }
      end
    else
      flash[:error] = @selection.errors.messages
      puts "Nul !"
      respond_to do |format|
        format.html {redirect_to root_path}
        format.js { }
      end
    end
  end

  def destroy
    @cart = Cart.find_by(user_id: current_user.id)
    @selection = Selection.find(params[:id])
    @selection.destroy
    flash[:success] = "Photo supprimée au panier!"
      puts "Succès ! #{@selection.item_id} a été supprimé du panier #{Cart.find_by(user_id: current_user.id)}"
      redirect_to carts_path
  end

end
