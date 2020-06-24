#on défini la class HumanPlayer qui va hériter des méthodes et des instances classe Player
class HumanPlayer < Player
  attr_accessor :weapon_level
  # Initialisation du programme
  def initialize(name)
    @name = name
    @weapon_level = 1
    life_points = 100
    @life_points = life_points
  end
  # Création de la méthode pour présenter l'état d'un joueur.
  def show_state
    puts "#{@name} a #{@life_points} points de vie et une arme de niveau #{@weapon_level}"
  end

  puts ""
  puts "-" * 60
  puts ""
  # Création de la méthode pour générer des dégats aléatoire avec la fonction rand.
  def compute_damage
    rand(1..6) * @weapon_level
  end
  # Création de la méthode pour produire une nouvelle arme au joueur humain, de manière aléatoire
  def search_weapon
    new_weapon_level = rand(1..6)
    if @weapon_level < new_weapon_level
      puts "Tu as trouvé une nouvelle arme de niveau #{new_weapon_level} ! C'est bon pour la bataille !"
      @weapon_level = new_weapon_level
    else
      puts "Tu as trouvé une nouvelle arme de niveau #{new_weapon_level} alors que ton arme actuelle est de niveau #{weapon_level}. C'est mauvais signe !!!"
      
    end
  end

  puts ""
  puts "-" * 60
  puts ""
  # Création d'une méthode pour produire une bonus de vie pour le joueur humain, de manière aléatoire.
  def search_health_pack
    health_pack = rand(1..6)
    if health_pack == 1
      puts "Tu n'as rien trouvé..."
    elseif health_pack >= 2 && health_pack <= 5
      new_life_points = @life_points + 50
      # le niveau de vie du joueur humain ne peut être suppérieur à 100!
      @life_points  = new_life_points > 100 ? 100 : @life_points
      puts "Bravo, tu as trouvé un pack de +50 pv !"
    else
      new_life_points = @life_points + 50
      # le niveau de vie du joueur humain ne peut être suppérieur à 100!
      @life_points  = new_life_points > 100 ? 100 : @life_points
      puts "Bravo, tu as trouvé un pack de +80 pv !"
    end
  end

  puts ""
  puts "-" * 60
  puts ""

end

