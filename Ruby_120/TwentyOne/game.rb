require "pry"

module Hand
  def initialize
    @hand = []
  end

  def hit(deck)
    hand << deck.sample
    deck.delete(hand[-1])
  end

  def deal(deck)
    2.times do
      hand << deck.sample
      deck.delete(hand[-1])
    end
  end

  def busted?
    total > 21
  end

  def total
    ranks = []
    hand.each do |card|
      ranks << card.rank
    end
    ranks.map! do |rank|
      if rank < 10
        rank
      elsif rank < 13
        10
      elsif rank == 14
        11
      end
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

  def to_s
    @hand.each do |card|
      puts "A #{card.rank} of #{card.suit}"
    end
  end  
end

class Player 
  include Hand
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
end

class Card
  attr_accessor :suit, :rank

  def initialize(suit, rank)
    # what are the "states" of a card?
    @suit = suit
    @rank = rank
  end
end

class Game
  def initialize
    @deck = Deck.new
    @dealer = Player.new("dealer")
    @player = Player.new("player")
  end

  def deal_cards
    @dealer.deal(@deck)
    @player.deal(@deck)
  end

  def show_initial_cards
    puts @player.hand
    puts @dealer.hand[0]
  end

  def player_turn
    loop do
      puts "What would you like to do? You can hit (h) or stay (s)"
      answer = gets.chomp.downcase[0]
      if answer == "h"
        player.hand.hit
      else
        break
      end
    end
  end

  def dealer_turn
    loop do
      break if player.hand.total > 21
      dealer.hand.hit if dealer.hand.total < 17
      break if dealer.hand.total > 21
    end
  end

  def show_result
    if player.hand.busted?
      puts "you busted!" 
    elsif player.hand.total > dealer.hand.total
      puts "you win!"
    elsif player.hand.total < dealer.hand.total
      puts "you lose!"
    else
      puts "it's a tie!"
    end
  end

  def start
    deal_cards
    show_initial_cards
    player_turn
    dealer_turn
    show_result
  end
end

Game.new.start