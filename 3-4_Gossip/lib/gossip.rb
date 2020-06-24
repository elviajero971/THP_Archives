
require 'bundler'
Bundler.require

require_relative 'controller'

class Gossip
  attr_reader :content, :author

  def initialize(author, content)
    @content = content
    @author = author
  end

  def save
    CSV.open("db/gossip.csv", 'a') do |csv|
      csv << [@author, @content]
    end
  end



end