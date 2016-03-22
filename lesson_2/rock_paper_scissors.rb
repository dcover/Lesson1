VALID_CHOICES = %w(rock paper scissors).freeze

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("Congratulations, and now there will be cake. (win)")
  elsif win?(computer, player)
    prompt("The cake is all mine. (loss)")
  else
    prompt("Looks like neither one of us get cake. (tie)")
  end
end

loop do
  choice = ''
  loop do
    prompt("I want to play a game. Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    break if VALID_CHOICES.include?(choice)
    prompt("Please enter a valid choice.")
  end

  computer_choice = VALID_CHOICES.sample

  Kernel.puts("You chose: #{choice}; computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Goodbye then.")
