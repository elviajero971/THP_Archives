# création de la class Player qui va définir les attributs, instances et méthodes des joueurs.
class Player
  attr_accessor :name, :life_points

  # Initialisation du programme
  def initialize(name)
    @name = name
    @life_points = 10
  end
  # Création de la méthode pour présenter l'état d'un joueur.
  def show_state
    puts "#{@name} a #{@life_points} points de vie"
  end
  # Création de la méthode pour infliger des dégats à un joueur.
  def gets_damage(damage)
    @life_points -= damageosé = Player.new('José')
    Marc = Player
    if @life_points <= 0
      puts "Il lui inflige #{damage} points de dommages !\n"
      puts "#{@name} a été tué !"
    end
  end
  # Création de la méthode pour infliger des dégats de manière aléatoire à l'aide de la méthode compute_damage
  def attacks(attacked_player)
    print "#{@name} attaque #{attacked_player.name} ! "
    damage = compute_damage
    attacked_player.gets_damage(damage)
    if attacked_player.life_points > 0
      print  "Il lui inflige #{damage} points de dommages !\n"
    else
      
      exit
    end
  end
  # Création de la méthode pour générer des dégats aléatoire avec la fonction rand.
  def compute_damage
    rand(1..6)
  end
end
