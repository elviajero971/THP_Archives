require 'rubygems'
require 'nokogiri' 
require 'open-uri'
require 'pry'

page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all"))  
value_crypto = []
symbol_crypto = []

page.xpath('/html/body/div/div/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr/td[3]/div').each do |a|
    symbol_crypto << a.text
end 

page.xpath('/html/body/div/div/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr/td[5]/a').each do |a|
  value_crypto << a.text.delete("$").tr(",","").tr(" ","").to_f
end 

print symbol_crypto.zip(value_crypto).map{|k, v| {"#{k}":v}}



#je veux créer un array qui va acceuillir les noms et valeurs de chaque cryptos de coinmarket
#je veux récupérer les noms de toutes les crypto sur coinmarket et en même temps toutes leurs valeurs associés
#je veux mettre les données récupérer dans l'array.

#chemin pour le tableau avec toutes les cryptos et leurs infos
# /html/body/div/div/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody



# chemin pour récuperer le symbol de la crypto BTC
# /html/body/div/div/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr[1]/td[3]/div

# chemin pour récupérer la valeur de la crypto BTC
# /html/body/div/div/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr[1]/td[5]/a

# chemin pour récupérer le symbol de la crypto ETH
# /html/body/div/div/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr[2]/td[3]/div

# chemin pour récupérer la valeur de la crypto ETH
# /html/body/div[1]/div/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr[2]/td[5]/a

#Si tu veux récupérer tous les liens dont le href contient le mot "mailto", tape page.xpath('//a[contains(@href, "mailto")]')