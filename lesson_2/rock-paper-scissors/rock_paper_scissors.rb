VALID_CHOICES = ['rock', 'paper', 'scissors']

    def prompt(message)
      Kernel.puts("=> #{message}")
    end

    def display_results(player, computer)
      if (player == 'rock' && computer == 'scissors') ||
         (player == 'paper' && computer == 'rock') ||
         (player =='scissors' && computer == 'paper')
        prompt("You Won!")
      elsif (player == 'paper' && computer == 'scissors') ||
          (player == 'rock' && computer== 'paper') ||
          (player =='scissors' && computer == 'rock')
        prompt("Computer won!")
      else
        prompt("It's a tie!")
      end
    end

loop do
  choice = ''
  loop do
    prompt("choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("invalid choice, please try again")
    end
  end

    computer_choice = VALID_CHOICES.sample()

    Kernel.puts("=> You chose: #{choice}; Computer chose: #{computer_choice}")

    display_results(choice, computer_choice)


  prompt("Do want to play again? (y)")
  answe = Kernel.gets().chomp()
  break unless answe.downcase().start_with?('y')
end

prompt("Thank you for playing, Goodbye!")