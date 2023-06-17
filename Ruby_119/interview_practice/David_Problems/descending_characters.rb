=begin
Develop a method that returns how many words in a string contain
characters all in descending order. Words won't contain punctuation. Words are substrings separated by spaces
==============
Problem


------------------------
-  Inputs: string
-  Output: integer
---
** Rules **
Explicit
1. words are separated by spaces
2. 
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
  -  Inputs: 
  -  Output: 
-  Example 2
  -  Inputs: 
  -  Output: 
---
Modelling/Scratch Pad
--------------------------------------------------



--------------------------------------------------
Data Structures
--------------


---
Algorithm
---------
generate an array of words from original string, set it equal to variable `words`
generate a helper method `descending?` that returns true or false based on whether a string has descending characters or not
  create array of characters
  iterate through array of characters
    if current character is > next character return false
    return true if index is the same as one less than the size of characters
transform `words` into the result when helper method is called on word. 
  initialize variable `booleans` to this array
return count of value `true` in `booleans`
=end


def descending?(string)
  characters = string.chars
  characters.each_with_index do |char, index|
    return true if index == characters.size - 1
    return false if char > characters[index + 1]
  end
end

def descending_strings(string)
  words = string.split
  booleans = words.map do |word|
    descending?(word)
  end
  booleans.count(true)
end

p descending_strings("abcde")
p descending_strings("zxvy")
p descending_strings("z")
p descending_strings("abc def gh ijk nmzee") == 4
p descending_strings("zecharias") == 0
p descending_strings("eeeeeeeee about hi") == 2
p descending_strings("abou") == 1

