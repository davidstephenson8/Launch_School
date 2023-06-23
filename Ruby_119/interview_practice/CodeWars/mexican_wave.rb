=begin
==============
Problem: 
create a method that returns an array with sequentially capitalized letters in the word
------------------------
-  Inputs: string
-  Output: array with capitalized letters moving through in a wave
---
Explicit Rules
1. spaces should be skipped
2.
3.

Implicit Rules
1.
2.
3.

Examples:
-  Example 1
  -  Inputs: hello
  -  Output: %w(Hello, hEllo, heLlo, helLo, hellO)
-  Example 2
  -  Inputs:
  -  Output:
---
---
Data Structure
--------------

---
Algorithm
---------
initialize `results` to an empty array
initialize 'capitalized` to ""
iterate through the characters in the string with an index
  if the character isn't a letter, skip it
  if the character is a letter, 
    transform the array, capitalizing the letter at specific index
    join the characters and add that string to the results array
end
return `results`
---
=end

def wave(str)
  results = []
  characters = str.chars
  capitalized = ""
  str.chars.each_with_index do |char, index|
    next if char.match(/[^a-zA-Z]/)
    capitalized = characters.map.with_index do |char, index2|
      if index == index2
        char.capitalize
      else
        char
      end
    end
    results << capitalized.join
  end
  results
end

# p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
# p wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]
# p wave("") == []
p wave("two words")# == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]
# p wave(" gap ") == [" Gap ", " gAp ", " gaP "]
