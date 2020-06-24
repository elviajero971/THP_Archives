require 'bundler'

Bundler.require

require_relative 'lib/router'
require_relative 'db/gossip.csv'
require_relative 'lib/controller'
require_relative 'lib/gossip'

Router.new.perform