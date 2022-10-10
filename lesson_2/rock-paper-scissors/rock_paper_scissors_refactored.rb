VALID_CHOICES = {
  rock: 'rock',
  paper: 'paper',
  scissors: 'scissors'
}

def prompt(message)
  Kernel.puts("=> #{message}")
end

def score(wins, losses)
  puts "wins: #{wins}"
  puts "losses: #{losses}"
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'r' && second == 'scissors') ||
    (first == 'p' && second == 'rock') ||
    (first == 's' && second == 'paper') ||
    (first == 'rock' && second == 's') ||
    (first == 'paper' && second == 'r') ||
    (first == 'scissors' && second == 'p')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You Won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end
win = 0
loss = 0
puts 'Welcome to RPS!'
loop do
  choice = ''
  loop do
    prompt("choose one: #{VALID_CHOICES.values().join(', ')}")
    choice = Kernel.gets().chomp()

    if choice == 'score'
      score(win, loss)
    elsif VALID_CHOICES.keys().to_s().include?(choice)
      break
    else
      prompt("invalid choice, please try again")
    end
  end

  computer_choice = VALID_CHOICES.values.sample()

  Kernel.puts("=> You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  if win?(choice, computer_choice)
    win += 1
  elsif  win?(computer_choice, choice)
    loss += 1
  end

  break if win == 20 || loss == 20
end

prompt("wins: #{win}")
prompt("losses: #{loss}")

if win == 3
  prompt("You are the GRAND CHAMPION!\n=> thank you for playing, Goodbye!")
elsif loss == 3
  prompt("You lost!\n=> thank you for playing, Goodbye!")
end
