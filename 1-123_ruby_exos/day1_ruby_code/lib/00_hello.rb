def ask_first_name
  puts "What's your name?"
  first_name = gets.chomp
  print ">"
  return " Bonjour #{first_name}!!!"
end

print ask_first_name