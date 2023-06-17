=begin
==============
Problem

turn a camelcase string into a kebabed string
------------------------
-  Inputs: string
-  Output: string
---
** Rules **
Explicit
1. each letter should be lowercase in returned string
2. numbers should be removed
3. 

Implicit
1. 
2.
3.


---
Examples 
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: myCamelCasedString
  -  Output: my-camel-cased-string
-  Example 2
  -  Inputs: myCamelHas3Humps
  -  Output: my-camel-has-humps
---
Modelling/Scratch Pad
--------------------------------------------------

myCamelCasedString => [my, Camel, Cased, String]

--------------------------------------------------
Data Structures
--------------


---
Algorithm
---------
create an array of characters from given string, set it equal to `characters`
  initialize a variable `words` to an empty array
  initialize a variable `word_start` to 0
  iterate through `characters`
  if character is the same as the uppercase version of that character
    add the joined subarray of characters before that character to the array of words
    reassign `word_start` to the value of the current index
  if no capital is encountered and the whole string has been iterated through
    add the string from word start to current index to the words array
  join the substrings in words with a hyphen
  return the result of this method call after calling downcase on it
=end


# def kebabize(str)
#   characters = str.chars
#   words = []
#   word_start = 0
#   characters.select! do |char|
#     ("A".."Z").include?(char) || ("a".."z").include?(char)
#   end
#   characters.each_with_index do |char, index|
#     if index == characters.size - 1
#       words << characters[word_start..index].join
#     elsif char == char.upcase
#       words << characters[word_start...index].join
#       word_start = index
#     end
#   end
#   words.join("-").downcase
# end

# def kebabize(str)
#   characters = str.chars
#   words = []
#   word_start = 0
#   characters.select! do |char|
#     ("A".."Z").include?(char) || ("a".."z").include?(char)
#   end
#   characters.each_with_index do |char, index|
#     if char == char.upcase && index == characters.size - 1
#       words << characters[word_start...index].join
#       words << characters[index]
#     elsif char == char.upcase
#       words << characters[word_start...index].join
#       word_start = index
#     elsif index == characters.size - 1
#       words << characters[word_start..index].join
#     end
#   end
#   words.reject! {|word| word.empty?}
#   words.join("-").downcase
# end

def kebabize(string)
  characters = string.chars.select do |char|
    (/[a-z]/).match(char.downcase)
  end
  p characters
  characters.map!.with_index do |char, index|
    if index == 0
      char.downcase
    elsif 
      char == char.upcase
      "-" + "#{char.downcase}"
    else
      char
    end
  end
  characters.join
end


p kebabize('myCamelCasedString') #== 'my-camel-cased-string'
p kebabize('myCamelHas3Humps') #== 'my-camel-has-humps'
p kebabize("Pu28t4")
