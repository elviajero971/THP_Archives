require 'twitter' # Call the Twitter gem
require 'dotenv' # Call the Dotenv gem
# require 'twitter_search' # Call the Twitter Search gem

Dotenv.load('.env') # Ceci appelle le fichier .env (situé dans le même dossier que celui d'où tu exécute app.rb)
# et grâce à la gem Dotenv, on importe toutes les données enregistrées dans un hash ENV

# Few lines with the API keys of the .env file
def login_twitter
  client = Twitter::REST::Client.new do |config|
    config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
    config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
    config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
    config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
  end
  return client
end


def follow_twitter_user                                       
  login_twitter.follow("Lucas Illiano")
end

login_twitter
follow_twitter_user