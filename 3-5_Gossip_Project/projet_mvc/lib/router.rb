#propose les possibilités utilisateur puis redirige vers la bonne méthode du controller
require './lib/controller'

class Router

  #Router.new lancé par app.rb, crée automatiquement instance "@controller"
  def initialize
    @controller = Controller.new
  end  

  #on fait "Router.new.perform" dans app.rb > après init définit perform
  def perform 
      puts "BIENVENUE DANS THE GOSSIP PROJECT"
      
      while true 
      #affiche menu   
      puts "What do you want to do? \n"
      puts "1. Create gossip"
      puts "2. Show all the gossips (don't, it's kinda toxic)"
      puts "3. Destroy all of the gossip. 4EVER."
      puts "4. Quit"
      params = gets.chomp.to_i
        case params #en fonction choix
        when 1
          puts "You chose to create a gossip"
          @controller.create_gossip
        when 2
          puts "You chose to view all gossips... You asked for it..." 
          @controller.index_gossips 
        when 3
          puts "Good for you, you chose to destroy all of the fucking gossip." 
          @controller.destroy_gossip 
        when 4  
          puts "See you soon"
          break #permet de sortir boucle while (seule façon d'en sortir)
        else
          puts  "Wrong input, please try again" #si entrée non prévue, retourne début du "whie true", d'où boucle infinie
        end
      end         
  end  
end


