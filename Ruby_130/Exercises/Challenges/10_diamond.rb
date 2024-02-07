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

1(1)      a
2(3)     b b
3(5)    c   c
4(7)   d     d
5(9)  e       e
6(11)f         f
=end

class Diamond 
  def self.make_diamond(letter)
    max_line_size = ("A"..letter).to_a.size + ("A"..letter).to_a.size - 1
    middle = max_line_size / 2
    results = []
    ("A"..letter).each_with_index do |letter, index|
      line = " " * max_line_size
      line[middle - index], line[middle + index] = letter, letter
      results << line
    end
    reverse = ("A"...letter).to_a.reverse
    reverse.each_with_index do |letter, index|
      line = " " * max_line_size
      if letter == "A"
        line[middle] = letter
      else
        line[1 + index], line[-2 - index] = letter, letter
      end
      results << line
    end
    results.join("\n") + "\n"
  end
end

puts Diamond.make_diamond("A")
puts Diamond.make_diamond("B")
puts Diamond.make_diamond("C")
puts Diamond.make_diamond("D")
puts Diamond.make_diamond("E")
puts Diamond.make_diamond("Z")