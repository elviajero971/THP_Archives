def roll_dice
  return rand(6)



  
end

def analyze_dice(roll_dice)
  if roll_dice >=5
    puts "Vous avancez!"
    return 1
  elsif roll_dice == 1
    puts "Vous reculez!"
    return -1
  else
    puts "rien ne se passe"
    return 0
  end
end

def show_state(analyze_dice)
  puts "Vous êtes sur la marche n° #{analyze_dice}"
end

def is_over?(analyze_dice)
  if analyze_dice == 10
    return true
  else
    return false
  end
end

def play
  puts "Bienvenue dans le jeu!!"
  show_state(1)
end

puts "tapez 'entrée' pour jouer"
gets.chomp
analyze_dice(roll_dice)

puts "tapez 'entrée' pour jouer"
gets.chomp
step = step + analyze_dice(roll_dice)

puts "tapez 'entrée' pour jouer"
gets.chomp
step = step + analyze_dice(roll_dice)
show_state(step)

while( !is_over?(step) ) do
  puts "tapez 'entrée' pour jouer"
  gets.chomp
  step = step + analyze_dice(roll_dice)
  show_state(step)
end

def play
  puts "Bienvenue dans le jeu!!"

  step = 1
  show_state(step)

  while(!is_over?(step)) do
    puts "tapez 'entrée' pour jouer"
    gets.chomp
    step += analyze_dice(roll_dice)
    show_state(step)
  end

  puts "===Vous avez gagné!==="
end

play