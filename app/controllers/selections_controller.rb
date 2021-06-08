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

  # OU ALORS si @current_user.cart ne fonctionne pas :
      # quand user se connecte => création d'un nouveau panier
      # >>>>> dernière entrée de la BDD "Cart" == panier actuel
      # current_panier = Panier.last

  # private 

  # def selection_params
  #   params.permit(:item_id)
  # end

end
