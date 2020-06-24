#le controller = suite de méthodes appelées par le routeur, chaque méthode  contenir  appels au model Gossip et se finira avec un retour vers une view qui affiche quelquechose
require './lib/gossip'
require './lib/view'

class Controller

  def initialize
    @view = View.new
  end

  def create_gossip 
    params = @view.create_gossip
    gossip = Gossip.new(params[:author], params[:content])
    gossip.save
  end  

  def index_gossips
   gossips = Gossip.all
    @view.index_gossips(gossips)
    #Demander au model un array qui contient tous les potins que on a en base 
    #Demander à la view d’exécuter sa propre méthode index_gossips qui affichera tous les potins
  end  

  def destroy_gossip
    index_gossips #appelle méthode dans view
    gossip_to_destroy = @view.destroy_gossip
    if gossip_to_destroy >= 1 && gossip_to_destroy <= Gossip.all.size
      Gossip.detroy(gossip_to_destroy)
      @view.destroy_validation
    else
      @view.wrong_choice
      return destroy_gossip  
    end 
  end  

end 
