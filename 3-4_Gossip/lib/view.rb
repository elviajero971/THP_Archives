require 'bundler'
Bundler.require

class View
  

  def create_gossip
    puts "Bonjour à toi jeune comère, comment t'appelles-tu ?"
    print "> "
    @author = gets.chomp
    puts "Vas-y, balance moi ton potin !"
    print "> "
    @content = gets.chomp
    return params = [@author, @content]
  end

end