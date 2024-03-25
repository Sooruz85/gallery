class CommandesController < ApplicationController
  def index
    @commandes = Commande.all # Récupère toutes les commandes depuis la base de données
  end
end
