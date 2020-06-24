class View
  def initialize
  end
  
  def create_gossip
    puts "Please type your name followed by your gossip :"
    print ">"
    author = gets.chomp
    print ">"
    content = gets.chomp 
    @author = author
    @content = content 
    return params = { content: content, author: author }
  end

  def index_gossips(gossips)
    gossips.each.with_index do |gossip, i|
      print "#{i + 1} - author:"
      print gossip.author
      print "content:"
      puts gossip.content
      end
  end

  def destroy_gossip
    puts "Chose the number of the gossip to want to destroy"
    print ">"
    number = gets_chomp.to_i
  end  

  def wrong_choice
    puts "Enter a correct number please"
  end  

  def destroy_validation
    puts "Congrats' the gossip has been destroyed"
  end  

end  

