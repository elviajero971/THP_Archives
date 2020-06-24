require 'csv'

class Gossip
  attr_reader :author, :content

  def initialize(author, content)
    @content = content
    @author = author
  end

  def save
    # Adding new data
    gossip_array = [author, content]
    CSV.open('db/gossip.csv', 'a+') do |row|
    row << gossip_array
    end
  end

  def self.all
    gossips_array = []
        CSV.foreach('db/gossip.csv') do |row|
          gossip_provisoire = Gossip.new(row[0], row[1])
          gossips_array << gossip_provisoire
        end
    return gossips_array
  end

  def self.destroy(gossip_number)
    gossips_array = Gossip.all #montre gossip crée dans self
    gossips_array.delete_at(gossip_number.to_i - 1)
    CSV.open("db/gossip.csv", "w") do |csv|
      gossips_array.each do |gossip|
        csv << [gossip.author, gossip.content]
      end
    end
  end
        
end  