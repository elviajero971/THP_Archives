puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print ">"
etages = gets.to_i

while etages >= 26 || etages <= 0 do
  puts "Erreur, choisissez un nombre entre 1 et 25"
  etages = gets.to_i
end
i = 1
puts "Voici la pyramide:"
while i < etages +1 do
  puts " "*(etages-i)+"#"*(i)
  i += 1
end