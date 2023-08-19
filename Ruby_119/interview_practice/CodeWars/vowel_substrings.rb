# A substring is a contiguous (non-empty) sequence of characters within a string.
  
# A vowel substring is a substring that only consists of vowels ('a', 'e', 'i', 'o', and 'u') and has all five vowels present in it.
  
# Given a string word, return the number of vowel substrings in word.

=begin
==============
Problem: 
given a string, return the count of vowel substring in that String

vowel substring contains only a, e, i, o and u, and contains all of aeiou with no spaces
------------------------
-  Inputs: string
-  Output: integer
---
Explicit Rules
1. substrings are contiguous
2. substrings must contain all vowels and only vowels
3. substrings can contain more than just the 5 necessary vowels

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
array 
---
Algorithm
---------

make helper method `contains_all_vowels?` to check to see if string contains all 5 vowels
  unless contains "a" return false
  unless contains "e" return false
  unless contains "i" return false
  unless contains "o" return false
  unless contains "u" return false
  return true if all of the above conditions pass

make another helper method 'no_consonants?'
  does substring contain any consonants
    create an array of all of the characters in alphabet
    subtract vowels from that array
    iterate through consonants, check if the string includes any of the characters in consonants
      if the string includes a character in consonants return false
    if you iterate through the whole string of consonants and no falses are returned, return true

create all possible substrings from given string, assign to variable `substrings`
  iterate through string taking note of index
    start a second iteration through string taking note of index
      add substring from first index to second index if second index is greater than or equal to first index
assign vowel_substrings to result of selection of substrings after helper method contains_all_vowels is called
select substrings in vowel_substrings after calling `no_consonants?`
return the count of substrings remaining
---
=end

def contains_all_vowels?(string)
  %w(a e i o u).each do |vowel|
    return false unless string.include?(vowel)
  end
  true
end

def no_consonants?(string)
  consonants = ("a".."z").to_a - %w(a e i o u)
  consonants.each do |char|
    return false if string.include?(char)
  end
  true
end

def count_vowel_substrings(string)
  substrings = []
  string.chars.each_with_index do |char1, index1|
    string.chars.each_with_index do |char2, index2|
      substrings << string[index1..index2] if index2 >= index1
    end
  end
  vowels_no_consonants = []
  substrings.each do |substring|
    vowels_no_consonants << substring if no_consonants?(substring) && contains_all_vowels?(substring)
  end
  vowels_no_consonants.count
end

p count_vowel_substrings("abcde") == 0
p count_vowel_substrings("cuaieuouac") == 7
p count_vowel_substrings("aeiouu") == 2
p count_vowel_substrings("unicornarihan") == 0

# Given a string of words, you need to find the highest scoring word.

# Each letter of a word scores points according to it's position in the alphabet:
# a = 1, b = 2, c = 3 etc.

# You need to return the highest scoring word as a string.

# If two words score the same, return the word that appears earliest in the original string.

# All letters will be lowercase and all inputs will be valid.

=begin
==============
Problem: 
return word in given string with highest alphabet score
------------------------
-  Inputs: string
-  Output: word
---
Explicit Rules
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
create helper method `number_score` to determine alphabet score of word
  create hash that has key value pairs as a +> 1 b=> 2 etc. 
  create an array, assign to `alphabet` from a range from "a" to "z"
  initialize a hash `counts`
  iteraate through `alphabet`, taking note of index
    assigning keys in hash to each element and values to integers 1-26 (dictated by index plus 1)
  create variable sum, initialize to 0
  iterate through characters in word
    return value from hash of character, add to value of sum
  return sum

  
initialize variable `words` to the given string split up where there's a space
initialize variable `values` to `words` transformed
      pass each value in words to `number_score` and return value
  
determine max value in `values`, assign to `max_value`
determine index value of max value in `values`, assign to `value_index`
return words at `value_index`
---
=end

def number_score(string)
  alphabet = ("a".."z").to_a
  counts = {}
  alphabet.each_with_index do |character, index|
    counts[character] = index += 1
  end
  sum = 0
  string.chars do |char|
    sum += counts[char]
  end
  sum
end

def alphabet_score(string)
  words = string.split
  values = words.map do |word|
    number_score(word)
  end
  words.max_by {|word| number_score(word)}
end

p alphabet_score('man i need a taxi up to ubud') == 'taxi'
p alphabet_score('what time are we climbing up the volcano') == 'volcano'
p alphabet_score('take me to semynak') == 'semynak'
p alphabet_score('aa b') == 'aa'
