=begin
==============
Problem: 
given a string of words, return the highest scoring word
------------------------
-  Inputs: string of words
-  Output: highest scoring word
---
Explicit Rules
1. score is determined by position of character in the alphabet, with 1 assigned to "a" and 26 assigned to "z"
2. return should be word, not integer value of word
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
create a hash `character_values` where each letter is assigned to its corresponding number
initialize `words` to the initial string split where there are spaces
create a new array, `values` where each word is assigned a value based on the sum of each of the values assigned to each
character in `values`
get the maximum value of that array
determine its index
return the same index from words
---
=end

def high(x)
  character_values = ("a".."z").to_a.map.with_index do |letter, index|
    [letter, index + 1]
  end.to_h
  words = x.split
  word_values = words.map do |word|
    word.chars.map do |char|
      character_values[char]
    end.sum
  end
  max_index = word_values.index(word_values.max)
  words[max_index]
end

p high('man i need a taxi up to ubud') #== 'taxi'
p high('what time are we climbing up the volcano') #== 'volcano'
p high('take me to semynak') #== 'semynak'
p high('aaa b') #== 'aaa'
