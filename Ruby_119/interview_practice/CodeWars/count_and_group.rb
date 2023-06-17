=begin
Write a method that takes a string as an argument and groups the number of times each character appears 
in the string as a hash sorted by the highest number of occurrences.

The characters should be sorted alphabetically e.g:

get_char_count("cba") => {1=>["a", "b", "c"]}
You should ignore spaces, special characters and count uppercase letters as lowercase ones.
=begin
==============
Problem

take all of the alphanumeric characters in a string and put them into a hash, where the value is an array of all of the 
characters that appear the same number of times and the key is the count of each of those characters
------------------------
-  Inputs: string
-  Output: hash
---
** Rules **
Explicit
1. arrays must be sorted
2. ignore non alphanumeric characters
3. all letters should be treated as lowercase

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
create a new hash
create an array of characters from the string, initialize variable `chars` to this array
create a clean array with only the alphanumeric characters and all downcase
  convert all characters to downcase
  substitute any non-alphanumeric character with an empty string
iterate through `chars`
  count the number of times each character occurs in the `chars` array
  add this count to the hash in an array if a key equivalent to the count doesn't already exists
  if a key equivalent to the count already exists, push the value into the existing array
iterate through the hash, sorting each value
sort then reverse the hash

=end

def get_char_count(string)
  clean_chars = string.downcase.gsub(/[^a-z0-9]/, "").chars.uniq
  results = clean_chars.group_by{|char| string.downcase.count(char)}
  results.each do |key, value|
    value.sort!
  end
end

p get_char_count("Mississippi") == {4=>["i", "s"], 2=>["p"], 1=>["m"]}
p get_char_count("Hello. Hello? HELLO!!") == {6=>["l"], 3=>["e", "h", "o"]}
p get_char_count("aaa...bb...c!") == {3=>["a"], 2=>["b"], 1=>["c"]}
p get_char_count("aaabbbccc") == {3=>["a", "b", "c"]}
p get_char_count("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}
