puts "Quel est ton âge ?:"
print ">>> "
age = gets.to_i
years = age
half_age = age / 2
x = 0
while x <= years
    if x == half_age
        puts "Il y a #{age} ans, tu avais la moitié de l'âge que tu as aujourd'hui"
    else
        puts "Il y a #{age} ans, tu avais #{x} ans"
    end
    age = age - 1
    x = x + 1
end