=begin
==============
Problem

reverse all of the words in a string with 5 characters or more
------------------------
-  Inputs: a string
-  Output: a string with 5 character or more words reversed
---
** Rules **
Explicit
1. 
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

I'm thinking I can split the string, save the result as an array and then transform each word in the array if the 
size of the word is greater than 4

--------------------------------------------------
Data Structures
--------------


---
Algorithm
---------
i: string
split string into words, store in variable `words`
iterate through words
  reverse each string that has more than 4 characters
join wordsm, returning string with words reversed
=end


def spinWords(string)
  words = string.split(" ")
  words.map! do |word|
    if word.size > 4
      word.reverse 
    else
      word
    end
  end
  words.join(" ")
end

p spinWords("Hey fellow warriors") == "Hey wollef sroirraw"
p spinWords("This is a test") == "This is a test" 
p spinWords("This is another test") == "This is rehtona test"
p spinWords('test') == 'test'