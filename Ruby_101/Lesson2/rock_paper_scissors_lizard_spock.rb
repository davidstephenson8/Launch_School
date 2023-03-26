VALID_CHOICES = [:rock, :paper, :scissors, :lizard, :spock]
WINNING_MOVE = {
  rock: ["lizard", "scissors"],
  paper: ["rock", "spock"], 
  scissors: ["lizard", "paper"],
  lizard: ["spock", "paper"],
  spock: ["rock", "scissors"]
}

def translate_input(choice)
  if choice.downcase.start_with?("r")
    choice = :rock
  elsif choice.downcase.start_with?("p")
    choice = :paper
  elsif choice.downcase.start_with?("sc")
    choice = :scissors
  elsif choice.downcase.start_with?("sp")
    choice = :spock
  elsif choice.downcase.start_with?("l")
    choice = :lizard
  else
    choice = :wrong
  end
end

def results(player, computer, standings)
  if win?(player, computer)
    standings[:wins] += 1
  elsif win?(computer, player)
    standings[:losses] += 1
  else
    standings[:ties] += 1
  end
end 

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("You lose!")
  else
    prompt("It's a tie!")
  end
end

def win?(first, second)
  WINNING_MOVE[first].include?(second.to_s)
end

def prompt(message)
  puts "=> #{message}"
end

standings = {wins: 0, losses: 0, ties: 0}

loop do
  
  choice = ''

  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}.") 
    prompt("You can type the first letter to choose your fighter, first two for SPock and SCissors")
    input = gets.chomp

    choice = translate_input(input)

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt "You chose #{choice}. The computer chose #{computer_choice}"

  display_results(choice, computer_choice)
  results(choice, computer_choice, standings)
  p standings

  if standings[:wins] == 3 
    puts "You are the grand winner!"
    break
  elsif standings[:losses] == 3 
    puts "The computer is the grand winner!"
    break
  else
  end
end
