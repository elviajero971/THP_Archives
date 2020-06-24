
require 'bundler'
Bundler.require

require_relative 'gossip'
require_relative 'view'

class Controller

  def initialize
    gossip = Gossip.new(@author, @content)
    gossip.save
    @view = View.new
  end

  def create_gossip
    params = @view.create_gossip
    gossip = Gossip.new(params)
   
    gossip.save
  end

end

moi = Controller.new
moi.create_gossip