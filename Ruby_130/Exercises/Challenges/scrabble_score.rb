=begin
given a word, get the scrabble score for that word. 

Rules
1. empty words, nil and whitespace should all score zero
2. scoring is case insensitive

ALGO
create a Scrabble class with a score method
the Scrabble should save the initial word as uppercase
the class should also contain a hash, SCORES, with each of the letters saved as keys with their appropriate values

the score method 
  returns 0 if the string is empty
  iterates through the characters in the initial word, saves result as values
    if the character is not found in the SCORES hash, it should transform to 0
    otherwise, the character transforms to its value in the SCORES hash
  returns the sum of values
=end

class Scrabble
  SCORES = {A: 1, E: 1, I: 1, O: 1, U: 1, L: 1, N: 1, R: 1, S: 1, T: 1, D: 2, G: 2, B: 3, C: 3, M: 3, P: 3, F: 4, H: 4, V: 4, W: 4, Y: 4, K: 5, J: 8, X: 8, Q: 10, Z: 10}

  def initialize(word)
    @word = word
  end

  def score
    return 0 if @word.nil? || @word.empty?
    upcase = @word.upcase
    values = upcase.chars.map do |char|
      if SCORES[char.to_sym] == nil
        0
      else
        SCORES[char.to_sym]
      end
    end
    values.sum
  end

  def self.score(word)
    Scrabble.new(word).score
  end
end
