=begin
  The computer generates a random number from 1 to 100 for the human to guess. The human guesses 7 times what the number is. Each time the human
  makes a guess the computer evaluates the guess and says if it's higher or lower than the number. 
=end

require "pry"

class MysteryNumber
  def initialize
    @number = rand(100)
  end

  def ==(other)
    @number == other
  end

  def >(other)
    @number > other
  end

  def <(other)
    @number < other
  end
end

number = MysteryNumber.new

class Player
  attr_reader :guess

  def initialize
    @guess = nil
  end

  def get_guess
    puts "Guess a number between 1-100"
    @guess = gets.chomp.to_i
  end
end

class GuessingGame
  @@number_of_guesses = 7
  def initialize
    @player = Player.new
    @mystery = MysteryNumber.new
  end

  def generate_new_mystery
    @mystery = MysteryNumber.new
  end

  def get_player_guess
    puts "You have #{@@number_of_guesses} guesses remaining"
    loop do 
      @player.get_guess
      # binding.pry
      if (1..100).include?(@player.guess)
        break
      else
        puts "invalid guess, must be a number from 1 to 100"
      end
    end
    @@number_of_guesses -= 1
  end

  def evaluate_player_guess
    if @mystery > @player.guess
      puts "That's too low"
    elsif @mystery < @player.guess
      puts "That's too high"
    elsif @mystery == @player.guess
      puts "That's it!"
    end
  end

  def player_win?
    @mystery == @player.guess
  end

  def out_of_guesses?
    @@number_of_guesses <= 0
  end
  
  def play
    generate_new_mystery
    loop do 
      get_player_guess
      # binding.pry
      evaluate_player_guess
      if player_win? 
        puts "You won! Sharp guessing there shooter"
        break
      elsif out_of_guesses?
        puts "Should have been able to get there kiddo"
        break
      end
    end
  end
end

game = GuessingGame.new

game.play