class Player
  attr_accessor :choose, :move, :name
  attr_reader :player_type, :score, :history

  def initialize(player_type = :human)
    @player_type = player_type
    @move = nil
    set_name
    @score = 0
    @history = []
  end

  def add_move(move)
    history << move
  end

  def increment_score
    @score += 1
  end

  def winner?(other_move)
    move > other_move
  end
end

class Human < Player
  def set_name
    n = ""
    loop do
      puts "What's your name?"
      n = gets.chomp
      break unless n.empty? || n.chars.uniq.join == " "
      puts "Sorry, must enter a name"
    end
    self.name = n
  end

  def choose
    choice = nil
    loop do
      puts "Choose rock, paper, scissors, lizard or Spock"
      choice = gets.chomp.downcase
      break if Move::VALUES.include?(choice)
      puts "What?"
    end
    @move = Move.new(choice)
  end
end

class Computer < Player
  CLASSES = ["druid", "barbarian", "wizard", "bard", "paladin"]
  NAMES = ["Fern", "Conan", "Shalzabezzar", "Sam", "Elodrir"]
  def set_name
    self.choose_character
    puts "You can choose to play a druid, barbarian, wizard, bard or paladin."
    puts "Make a selection for an opponent by typing their name, the first letter of their name, or pressing enter to choose a random opponent"
    choice = gets.chomp
    if choice.empty?
      index = (1..5).to_a.sample
      self.name = "#{NAMES[index]} the #{CLASSES[index]}"
    else
      self.name = "#{NAMES[CLASSES.index(choice)]} the #{choice}"
    end
  end

  def choose
    self.move = Move.new(Move::VALUES.sample)
  end
end


class Move
  attr_reader :value
  GAME_LOGIC = {
                "rock" => ["scissors", "lizard"],
                "paper" => ["rock", "spock"],
                "scissors" => ["paper", "lizard"],
                "lizard" => ["paper", "spock"],
                "spock" => ["rock", "scissors"], 
              }
  VALUES = ["rock", "paper", "scissors", "lizard", "spock"]
  def initialize(choice)
    @value = choice
  end

  def >(other_move)
    GAME_LOGIC[value].include?(other_move.value)
  end

  def to_s
    @value
  end
end

class RPSGame
  attr_accessor :human, :computer

  def initialize
    @human = Human.new
    @computer = Computer.new
    @rounds = nil
  end

  def display_welcome_message
    puts "You've convinced #{computer.name}, one of your Dungeons and Dragons buddies, to play some rock, paper, scissors lizard, Spock with you!"
    sleep(0.5)
  end

  def display_goodbye_message
    puts "Don't forget to tell your friends about rock, paper, scissors, lizard, Spock"
  end

  def display_moves
    puts "#{human.name} chose #{human.move}"
    puts "#{computer.name} chose #{computer.move}"
  end

  def display_winner
    if human.winner?(computer.move)
      puts "#{human.name} won!"
    elsif computer.winner?(human.move)
      puts "#{computer.name} won!"
    else
      puts "It's a tie!"
    end
  end

  def keep_score
    if human.winner?(computer.move)
      human.increment_score
    elsif computer.winner?(human.move)
      computer.increment_score
    end
    human.add_move(human.move)
    computer.add_move(computer.move)
    puts "The score is #{human.score} for #{human.name} to #{computer.score} for #{computer.name}"
  end

  def play_again?
    answer = nil
    loop do
      puts "would you like to play again? (y/n)"
      answer = gets.chomp
      break if ["y", "n"].include?(answer)
    end
    return true if answer == "y"
    false
  end

  def play
    display_welcome_message
    loop do
      human.choose
      computer.choose
      display_moves
      display_winner
      keep_score
      break unless play_again?
    end
    display_goodbye_message
  end
end

RPSGame.new.play
