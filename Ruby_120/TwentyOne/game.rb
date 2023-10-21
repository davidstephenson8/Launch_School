require "pry"

class Hand
  def initialize
    @hand = []
  end

  def hit(deck)
    @hand << deck.get_card
  end

  def deal(deck)
    2.times do
      @hand << deck.get_card
    end
  end

  def busted?
    total > 21
  end

  def total
    ranks = []
    @hand.each do |card|
      ranks << card.rank
    end
    ranks.map! do |rank|
      if rank < 10
        rank
      elsif rank <= 13
        10
      elsif rank == 14
        11
      end
    end
    if ranks.include?(11) && ranks.sum > 21
      ranks.map! do |rank|
        if rank == 11
          1
        else
          rank
        end
      end
    end
  ranks.sum
  end

  def show_first
    @hand[0].to_s
  end

  def to_s
    @hand.each do |card|
      if card.rank <= 10
        puts "a #{card.rank} of #{card.suit}"
      elsif card.rank == 11
        puts "a Jack of #{card.suit}"
      elsif card.rank == 12
        puts "a Queen of #{card.suit}"
      elsif card.rank == 13
        puts "a King of #{card.suit}"
      elsif card.rank == 14
        puts "an Ace of #{card.suit}"
      end
    end
  end  
end

class Player 
  attr_accessor :hand, :name
  
  def initialize(player_type)
    if player_type == "player"
      puts "What's the player's name?"
      @name = gets.chomp
    end
    @hand = Hand.new
  end

  def deal(deck)
    @hand.deal(deck)
  end
end

class Deck
  def initialize
    @cards = []
    ["hearts", "clubs", "spades", "diamonds"].each do |suit|
      (2..14).each do |rank|
        @cards << Card.new(suit, rank)
      end
    end
    @cards.shuffle!
  end

  def get_card
    card = @cards.sample
    @cards.delete(card)
    return card
  end
  
end

class Card
  attr_accessor :suit, :rank

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end

  def to_s
    if self.rank <= 10
      puts "a #{self.rank} of #{self.suit}"
    elsif self.rank == 11
      puts "a Jack of #{self.suit}"
    elsif self.rank == 12
      puts "a Queen of #{self.suit}"
    elsif self.rank == 13
      puts "a King of #{self.suit}"
    elsif self.rank == 14
      puts "an Ace of #{self.suit}"
    end
  end
end

class Game
  def initialize
    @deck = Deck.new
    @dealer = Player.new("dealer")
    @player = Player.new("player")
  end

  def explain_rules
    system "clear"
    puts "Welcome to twenty one!"
    puts "The object of the game is to get a higher number of points than the dealer without going over 21"
    puts "Number cards are worth a number equal to their rank (1s are worth 1, 2s are worth 2. etc.)"
    puts "Face cards (jacks, queens and kings) are worth 10 points"
    puts "Aces are initialy worth 11, but if you would bust (go over 21 points) with an ace worth 11 in your hand"
    puts "its value converts to a 1."
    puts "the game starts dealing two cards to the player and the dealer"
    puts "the player can choose to add a card to their hand, or \"hit\", or stay, meaning"
    puts "they don't want to add any cards to their hand."
    puts "Then the dealer goes. They hit either until their hand is equal to or greater than 17 points"
    puts "Then the values of the two hands are compared and whoever has the most points wins!"
    puts "Good luck!"
    puts "push enter to start the game!"
    gets
  end

  def deal_cards
    @dealer.deal(@deck)sample
    @player.deal(@deck)
  end

  def show_initial_cards
    system("clear")
    puts "#{@player.name} has"
    @player.hand.to_s
    puts "for a score of #{@player.hand.total}"
    puts "The dealer has"
    @dealer.hand.show_first
    puts "and another hidden card"
  end

  def show_final_cards
    system("clear")
    puts "#{@player.name} has"
    @player.hand.to_s
    puts "for a score of #{@player.hand.total}"
    puts "The dealer has"
    @dealer.hand.to_s
    puts "for a score of #{@dealer.hand.total}"
  end

  def player_turn
    loop do
      puts "What would you like to do? You can hit (h) or stay (s)"
      answer = gets.chomp.downcase[0]
      if answer == "s" 
        break
      elsif answer == "h"
        @player.hand.hit(@deck)
        show_initial_cards
      else
        puts "Sorry, you need to type something that starts with an h (hit) or s (stay)"
      end
      if @player.hand.busted?
        break
      end
    end
  end

  def dealer_turn
    loop do
      break if @player.hand.total > 21
      @dealer.hand.hit(@deck) if @dealer.hand.total < 17
      break if @dealer.hand.total >= 17
    end
  end

  def show_result
    show_final_cards
    if @player.hand.busted?
      puts "you busted!"
    elsif @player.hand.total > @dealer.hand.total || @dealer.hand.busted?
      puts "you win!"
    elsif @player.hand.total < @dealer.hand.total
      puts "you lose!"
    else
      puts "it's a tie!"
    end
  end

  def reset
    @deck = Deck.new
    @dealer.hand = Hand.new 
    @player.hand = Hand.new
  end

  def play_again?
    puts "play another round? (y/n)"
    answer = gets.chomp.downcase[0]
    if answer == "y" 
      true
    else
      false
    end
  end

  def start
    explain_rules
    loop do
      deal_cards
      show_initial_cards
      player_turn
      dealer_turn
      show_result
      if play_again?
        reset
      else
        puts "cool, have a good one!"
        break
      end
    end
  end
end

Game.new.start