puts "donne-moi un nombre entier positif:"
print ">>> "
number = gets.to_i
while number >= 0
    puts number
    number = number - 1
    sleep(1)
end