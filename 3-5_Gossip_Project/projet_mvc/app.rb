require_relative 'lib/router'
require_relative 'lib/controller'
require_relative 'lib/view'
require_relative 'lib/gossip'


Router.new.perform

#porte d'entrée de notre application, vu que tout passe par le router 
#appeler classe Router via un Router.new.perform et puis c'est tout 