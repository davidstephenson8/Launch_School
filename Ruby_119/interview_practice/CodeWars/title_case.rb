=begin
==============
Problem

title case takes two arguments, a string and then a list of words that shouldn't be capitalized. The function then capitalizes
  all of the first words, and any word in the string that isn't in the list of words that shouldn't be capitalized. 
  the function should ignore the case of the string in the list of words not to be capitalized. 
------------------------
-  Inputs: string, another string with ignore words
-  Output: string with words capitalized
---
** Rules **
Explicit
1. the first word in the string is capitalized regardless
2. words in ignore list should be uncapitzlised otherwise
3. all other words should be capitalized

Implicit
1. input can come in in all caps, other weirdness, the function should return a normal capitalized string
2.
3.


---
Examples 
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: "the quick brown fox"
  -  Output: "The Quick Brown Fox"
-  Example 2
  -  Inputs: "THE WIND IN THE WILLOWS", "in, the"
  -  Output: "The Wind in the Willows"
---
Modelling/Scratch Pad
--------------------------------------------------



--------------------------------------------------
Data Structures
--------------


---
Algorithm
---------
convert the string into words, assign to `words` variable
transform all substrings in `words` to downcase
convert minor words string to an array, reassign to `minor_words`
transform all substrings in `minor_words` to downcase
iterate through `words` with index
    if a word is index 0 capitalize it
    if a word is not contained in the minor words array capitalize it
join words, return this string
=end

def title_case(title, minor_words = '')
  words = title.split.map(&:downcase)
  minor_words = minor_words.split.map(&:downcase)
  words.map!.with_index do |word, index|
    if index == 0
      word.capitalize 
    elsif minor_words.include?(word)
      word
    else
      word.capitalize 
    end
  end
  words.join(" ")
end

p title_case('a clash of KINGS', 'a an the of') == 'A Clash of Kings'
p title_case('THE WIND IN THE WILLOWS', 'The In') == 'The Wind in the Willows'
p title_case('the quick brown fox') == 'The Quick Brown Fox'

