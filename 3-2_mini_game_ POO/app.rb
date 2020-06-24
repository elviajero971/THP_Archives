# Création de l'application qui va être le jeu en lui-même et qui fait appel aux fichiers player et human_player pour fonctionner
require_relative 'lib/player'
require_relative 'lib/human_player'

# Création des deux joueurs

José = Player.new('José')
Marc = Player.new('Marc')

# Présentation du jeu
puts "Bonjour à tous et bienvenue au combat du siècle entre #{José.name} et #{Marc.name}"
puts ""
puts ""

# La phase d'attaque
puts "Passons à la phase d'attaque. CA VA SAIGNEEEEEER !!!"
puts ""
# Boucle qui défini quand s'arrête le programme (quand la vie d'un des deux joueurs est à zéro)
while José.life_points >= 0 && Marc.life_points >= 0
  # Affiche l'état actuel des deux joueurs
  puts "Voici l'état de chaque joueur :"
  puts ""
  José.show_state
  puts ""
  Marc.show_state
  puts ""
  puts ""
  José.attacks(Marc)
  puts ""
  Marc.life_points > 0 ? Marc.attacks(José) : break
  puts ""
end