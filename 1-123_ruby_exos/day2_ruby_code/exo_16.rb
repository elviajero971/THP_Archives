puts "dis-moi ton age en 2020:"
print ">>> "
age = gets.to_i
years = age
x = 0
while x <= years
    puts "Il y a #{age} ans, tu avais #{x} ans"
    age = age - 1
    x = x + 1
end