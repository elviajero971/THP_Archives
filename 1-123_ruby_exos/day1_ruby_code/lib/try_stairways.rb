steps = 0
def play
  puts "Press ENTER to play the game!"
  gets.chomp
  rand(1..6)
end
def display_winning_msg()
  puts "you won!"
end

def show_steps(steps)
  puts "You are on step n°: #{steps}"
end
def game(steps)
  while steps < 10 do
    score = play()
    if score >= 5
      puts "You go forward!"
      steps += 1
    elsif score == 1
      puts "You go backward!"
      steps <= 1
      puts steps
    else
      puts "You stay where you are!"
      steps
      puts steps
    end
  end
  display_winning_msg() if steps == 10
end

game(steps)