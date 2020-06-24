require_relative 'lib/player'
require_relative 'lib/human_player'

# Display a welcome message
print "-" * 49
print"\n|Bienvenue sur 'ILS VEULENT TOUS MA POO' !" + " " * 6 + "|"
print "\n|Le but du jeu est d'être le dernier survivant !|" + "\n" + "-" * 49
puts ""

# Création des joueurs
puts ""
puts ""
print "-" * 60
puts ""
puts ""
puts "Quel est ton nom de combattant ?"
human_player_name = gets.chomp
human_player = HumanPlayer.new("#{human_player_name}")
bot1 = Player.new("Orca")
bot2 = Player.new("Goblin")
enemies = [bot1, bot2]
puts ""
puts "Voici l'état de #{human_player_name} :"
puts "#{human_player_name} a #{human_player.show_state} points de vie."

def display_menu(human_player, bot1, bot2)
  # Affichage du menu
  puts
  puts "C'est votre tour #{human_player.name}. Que voulez-vous faire ?"
  puts
  puts "a - chercher une meilleur arme ?"
  puts
  puts "s - chercher à se soigner ?"
  puts
  if bot1.life_points > 0
    puts "0 - Attaquer #{bot1.name} : il a #{bot1.life_points} points de vie ?"
  end
  if bot2.life_points > 0
    puts
    puts "1 - Attaquer #{bot2.name} : il a #{bot2.life_points} points de vie ?"
  end

  # Choix du joueur

  print "> "
  choice = gets.chomp
  case choice
  when 'a'
    human_player.search_weapon
  when 's'
    human_player.search_health_pack
  when '0'
    human_player.attacks(bot1)
  when '1'
    human_player.attacks(bot2)
  else
    puts "C'est pas bon!!!"
  end
  puts ""
  puts "#{bot1.name} n'a plus que #{bot1.life_points} vies."
  puts ""
  puts "#{bot2.name} n'a plus que #{bot2.life_points} vies."
  puts ""
end

puts ""
print "-" * 15
puts ""


# Le combat commence!!!
puts "#{human_player.name} n'a plus que #{human_player.life_points} points de vie."
while human_player.life_points > 0 && bot1.life_points > 0 || bot2.life_points > 0
  # Affichage du menu
  display_menu(human_player, bot1, bot2)

  # Les enemis attaquent!!!

  if bot1.life_points > 0 || bot2.life_points > 0
    puts "Les autres joueurs t'attaquent !"
  end
  enemies.each do |ennemy|
    if ennemy.life_points > 0
      puts "Les autres joueurs t'attaquent !"
      ennemy.attacks(human_player)
    end
  end
  
  puts "#{human_player.name} n'a plus que #{human_player.life_points} vies."
  
end
puts ""
puts "-" * 15
puts ""
puts "La partie est finie"
if human_player.life_points > 0
  puts "BRAVO ! TU AS GAGNE !"
else
  puts "Loser ! Tu as perdu !"
end