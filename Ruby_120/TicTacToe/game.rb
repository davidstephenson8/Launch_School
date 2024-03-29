require "pry"

class Board
  WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                  [[1, 5, 9], [3, 5, 7]]              # diagonals

  def initialize(game)
    @game = game
    @squares = {}
    reset
  end

  def []=(num, marker)
    @squares[num].marker = marker
  end

  def unmarked_keys
    @squares.keys.select { |key| @squares[key].unmarked? }
  end

  def full?
    unmarked_keys.empty?
  end

  def someone_won?
    !!winning_marker
  end

  def winning_marker
    WINNING_LINES.each do |line|
      squares = @squares.values_at(*line)
      if three_identical_markers?(squares)
        return squares.first.marker
      end
    end
    nil
  end

  def winning_square
    WINNING_LINES.each do |line|
      squares = @squares.values_at(*line)
      square = find_winning_square(squares)
      return square if square
    end
    nil
  end

  def risky_square
    WINNING_LINES.each do |line|
      squares = @squares.values_at(*line)
      square = find_risky_square(squares)
      return square if square
    end
    nil
  end

  def reset
    (1..9).each { |key| @squares[key] = Square.new }
  end

  # rubocop:disable Metrics/AbcSize
  def draw
    puts "     |     |"
    puts "  #{@squares[1]}  |  #{@squares[2]}  |  #{@squares[3]}"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{@squares[4]}  |  #{@squares[5]}  |  #{@squares[6]}"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{@squares[7]}  |  #{@squares[8]}  |  #{@squares[9]}"
    puts "     |     |"
  end
  # rubocop:enable Metrics/AbcSize

  private

  def find_winning_square(squares)
    markers = squares.map(&:marker)
    if markers.count(TTTGame::COMPUTER_MARKER) == 2 && markers.count(Square::INITIAL_MARKER) == 1
      index = markers.index(Square::INITIAL_MARKER)
      return squares[index]
    end
    nil
  end

  def find_risky_square(squares)
    markers = squares.map(&:marker)
    if markers.count(@game.human_marker) == 2 && markers.count(Square::INITIAL_MARKER) == 1
      index = markers.index(Square::INITIAL_MARKER)
      return squares[index]
    end
    nil
  end

  def three_identical_markers?(squares)
    markers = squares.select(&:marked?).map(&:marker)
    return false if markers.size != 3
    markers.min == markers.max
  end
end

class Square
  INITIAL_MARKER = " "

  attr_accessor :marker

  def initialize(marker=INITIAL_MARKER)
    @marker = marker
  end

  def to_s
    @marker
  end

  def unmarked?
    marker == INITIAL_MARKER
  end

  def marked?
    marker != INITIAL_MARKER
  end
end

class Player
  attr_reader :marker, :name, :human

  def initialize(marker, human = true)
    @human = human
    if human
      puts "What is your name?"
      @name = gets.chomp
    else
      @name = ['Hal', "Sal", "Compy3345", "Sally"].sample
    end
    @marker = marker
  end
end



class TTTGame
  COMPUTER_MARKER = "O"

  attr_reader :board, :human, :computer, :human_marker

  def initialize
    clear
    puts "What do you want your marker to be?"
    @human_marker = gets.chomp[0].upcase
    @board = Board.new(self)
    @human = Player.new(@human_marker)
    @computer = Player.new(COMPUTER_MARKER, false)
    @current_marker = @human_marker
    @human_score = 0
    @computer_score = 0
  end
  

  def play
    clear
    display_welcome_message
    main_game
    display_goodbye_message
  end

  private

  def main_game
    loop do
      display_board
      player_move
      board
      display_result_and_score
      break unless play_again?
      reset
      display_play_again_message
    end
  end

  def join_or(unmarked_squares, punctuation = ",", conjunction = nil)
    first_squares = unmarked_squares[0..unmarked_squares.size - 2].join("#{punctuation} ")
    if unmarked_squares.size == 1
      unmarked_squares[0]
    else 
      "#{first_squares} #{conjunction} #{unmarked_squares[-1]}"
    end
  end

  def player_move
    loop do
      current_player_moves
      break if board.someone_won? || board.full?
      clear_screen_and_display_board if human_turn?
    end
  end

  def display_welcome_message
    puts "Welcome to Tic Tac Toe!"
    puts ""
  end

  def display_goodbye_message
    puts "Thanks for playing Tic Tac Toe! Goodbye!"
  end

  def clear_screen_and_display_board
    clear
    display_board
  end

  def human_turn?
    @current_marker == @human_marker
  end

  def display_board
    puts "You're a #{human.marker}. #{computer.name} is a #{computer.marker}."
    puts ""
    board.draw
    puts ""
  end

  def human_moves
    puts "Choose a square (#{join_or(board.unmarked_keys, ",", "or")}):"
    square = nil
    loop do
      square = gets.chomp.to_i
      break if board.unmarked_keys.include?(square)
      puts "Sorry, that's not a valid choice."
    end

    board[square] = human.marker
  end

  def computer_moves
    # Check if there's a winning square for the computer
    winning_square = board.winning_square
    risky_square = board.risky_square

    if winning_square
      # If there's a winning move, take it and win the game
      winning_square.marker = COMPUTER_MARKER
    elsif risky_square
        risky_square.marker = COMPUTER_MARKER
    else
      board[board.unmarked_keys.sample] = COMPUTER_MARKER
    end

  end

  def current_player_moves
    if human_turn?
      human_moves
      @current_marker = COMPUTER_MARKER
    else
      computer_moves
      @current_marker = human_marker
    end
  end

  def display_result_and_score
    clear_screen_and_display_board

    case board.winning_marker
    when human.marker
      puts "#{human.name} won!"
      @human_score += 1
    when COMPUTER_MARKER
      puts "#{computer.name} won!"
      @computer_score += 1
    else
      puts "It's a tie!"
    end
    puts "#{human.name}: #{@human_score} #{computer.name}: #{@computer_score}"
  end

  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again? (y/n)"
      answer = gets.chomp.downcase
      break if %w(y n).include? answer
      puts "Sorry, must be y or n"
    end

    answer == 'y'
  end

  def clear
    system "clear"
  end

  def reset
    board.reset
    @current_marker = @human_marker
    clear
  end

  def display_play_again_message
    puts "Let's play again!"
    puts ""
  end
end

game = TTTGame.new
game.play
