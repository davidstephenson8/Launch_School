=begin
  given a capital letter, create a diamond that contains all letters up to that letter, and is just as
  wide as it is tall.

  algo
  create Diamond class
  create class method `make_diamond`
    initialize characters to 1
    initialize result to an empty array
    iterate through a range of letters from "A" to given letter.
      initialize "line" to a number of spaces equal to characters
      assign the first and last letters in the line to the current character
      add line to result
      increment characters by 2
    create an array of a reversed range of the original letters that excludes the given letter
    iterate through this array
      decrement characters by 2
      initialize "line" to a number of spaces equal to characters
      assign the first and last letters in the line to the current character
      add line to result
    join the lines in the results array with a newline

=end

class Diamond 
  def self.make_diamond(letter)
    characters = 1
    results = []
    ("A"..letter).each do |letter|
      line = " " * characters
      line[0], line[-1] = letter, letter
      results << line
      characters += 2
    end
    reverse = ("A"..letter).to_a.reverse[1..-1]
    characters -= 2
    reverse.each do |letter|
      characters -= 2 
      line = " " * characters
      line[0], line[-1] = letter, letter
      results << line
    end
    results.join("/n") + "/n"
  end
end

p Diamond.make_diamond("A")
p Diamond.make_diamond("B")
p Diamond.make_diamond("E")