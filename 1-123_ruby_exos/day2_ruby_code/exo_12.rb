puts "Choisi un nombre"
print ">"
compteur = 0
user_number = gets.chomp.to_i
while (compteur <= user_number)
  puts compteur
  compteur += 1
end