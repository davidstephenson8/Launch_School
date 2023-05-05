=begin
==============
Problem
In this kata, you've to count lowercase letters in a given string and return the letter count in a hash with
 'letter' as key and count as 'value'. The key must be 'symbol' instead of string in Ruby and 'char' instead 
 of string in Crystal.
------------------------
-  Inputs: string
-  Output: hash (letter count)
---
**Explicit Requirements**
1. string gets passed in
2. hash key/value pairs are a symbol of the character and a value
3. 
---
**Implicit Requirements** (if needed)
1.
2.
3.
---
Examples 
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 'activity'
  -  Output: {a: 1, c: 1, t: 2, i: 2, v: 1, y: 1}
-  Example 2
  -  Inputs:
  -  Output:
---
Scratch Pad/Working Area
--------------------------------------------------
so I think working through this I'll pull the characters out into an array all separated
then I'll make an empty hash
then I'll iterate through the characters array
if there's a key/value pair in the hash for a character already I'll skip it
  it there's no value I'll add a key (symbol of char) and set it equal to the count of that character 
    in the string (using count method)

--------------------------------------------------
Data Structures
--------------
arrays, hashes
---
Algorithm
---------
initialize a variable `counts` to an empty hash
take the input string and break it into characters inside of an array
iterate through that array of characters
  if there's a key/value pair go to the next character
  if there's not a key/value pair for that character
    set a key of the symbol of that character equal to the count of that character in the string
return the counts hash
=end

def letter_count(string)
  counts = {}
  characters = string.chars
  characters.each do |char|
    if counts[char.to_sym]
      next
    else
      counts[char.to_sym] = characters.count(char)
    end
  end
  counts
end