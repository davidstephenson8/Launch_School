=begin
==============
Problem
# Write a method that takes a string as an argument and returns
# the character that occurs least often in the given string.
# If there are multiple characters with the equal lowest number
# of occurrences, then return the one that appears first in the
# string. When counting characters, consider the uppercase and
# lowercase version to be the same.

------------------------
-  Inputs: string
-  Output: character (the one that occurs least often)
---
**Explicit Requirements**
1. return character that occurs least often
2. uppercase and lowercase characters are the same
3. return letter that occurs first in the string if multiple characters occur the same amount of times
---
**Implicit Requirements** (if needed)
1. spaces are considered characters
2.
3.
---
Examples 
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: Mississippi
  -  Output: m
-  Example 2
  -  Inputs: "Peter Piper picked a peck of pickled peppers"
  -  Output: "t"
---
Scratch Pad/Working Area
--------------------------------------------------

so I need to break each string up into an array of characters
then I could just store the count of each character in a hash?
so start a hash {}
check to see if a value is already in that hash
  if it is, go to the next character
  if it's not, set its value equal to the count of that character in the array of characters
so something like 

if hash[character]
  next
else
  hash[character] = array.count(character)

and then just use minby to return the key/value pair with the smallest value and take out the value from that array


--------------------------------------------------
Data Structures
--------------
hashes, arrays
---
Algorithm
---------
make a `character_counts` hash
convert string into all downcase
break string up into characters stored in an array
iterate through the array of characters
  if the character already exists in the character_counts hash, move to the next character
  if it doesn't exist in the hash, make a key/value pair where the key is the character and the value is the number of times
    that character appears in the characters hash
once the iteration is complete, return the value from the smallest key/value pair
=end

def least_common_char(string)
  character_counts = {}
  characters = string.downcase.chars
  characters.each do |char|
    if character_counts[char]
      next
    else
      character_counts[char] = characters.count(char)
    end
  end
  min_pair = character_counts.min_by{|_, value| value}
  min_pair[0]
end

p least_common_char("Hello World") == "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"
p least_common_char("Mississippi") == "m"
p least_common_char("Happy birthday!") == ' '
p least_common_char("aaaaaAAAA") == 'a'
