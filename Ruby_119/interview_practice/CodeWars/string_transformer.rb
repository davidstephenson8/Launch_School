=begin
==============
Problem: 
switch the cases of each letter in a string and reverse the word order in the string as well
------------------------
-  Inputs: string
-  Output: modified string
---
Explicit Rules
1. case must be the opposite of the case that you see in the original string
2. you need to handle multiple leading and trailing spaces
3. 

Implicit Rules
1. 
2. 
3. 

Examples:
-  Example 1
  -  Inputs:
  -  Output:
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
assign variable `chars` to all of the characters in a string
transform the characters in `chars` their opposite case, ignoring spaces
generate chunks from the string
  if a group of characters are letters, make them a chunk
  if it's anything else, split it off into its own chunk
reverse all of the chunks, join them and then return that result
---
=end

def string_transformer(str)
  characters = str.chars
  characters.map! do |char|
    char.swapcase
  end
  words = characters.slice_when{|first_char, second_char| first_char.match(/[a-zA-Z]/) && second_char == " " || second_char.match(/[a-zA-Z]/) && first_char == " " }.to_a
  words.reverse.join
end

p string_transformer("Example String") #== "sTRING eXAMPLE"