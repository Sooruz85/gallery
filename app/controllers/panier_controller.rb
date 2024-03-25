class PanierController < ApplicationController
  def index
    @panier_items = current_panier.panier_items
  end

  def create
    @tableau = Tableau.find(params[:tableau_id])
    @panier_item = current_panier.panier_items.build(tableau: @tableau)

    if @panier_item.save
      redirect_to panier_path, notice: 'Le tableau a été ajouté au panier.'
    else
      redirect_to root_path, alert: 'Une erreur est survenue lors de l\'ajout au panier.'
    end
  end

  def destroy
    @panier_item = current_panier.panier_items.find_by(id: params[:id])
    @panier_item.destroy if @panier_item
    redirect_to panier_path, notice: 'Le tableau a été supprimé du panier.'
  end
end
