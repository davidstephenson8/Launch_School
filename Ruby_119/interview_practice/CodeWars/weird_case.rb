=begin
==============
Problem
Write a function toWeirdCase (weirdcase in Ruby) that accepts a string, and returns the same string with all even indexed 
characters in each word upper cased, and all odd indexed characters in each word lower cased. The indexing just 
explained is zero based, so the zero-ith index is even, therefore that character should be upper cased and you need to 
start over for each word.

The passed in string will only consist of alphabetical characters and spaces(' '). Spaces will only be present if 
there are multiple words. Words will be separated by a single space(' ').

Examples:

weirdcase( "String" )#=> returns "StRiNg"
weirdcase( "Weird string case" );#=> returns "WeIrD StRiNg CaSe"
------------------------
-  Inputs: a string
-  Output: a string (with different cases)
---
**Explicit Requirements**
1. each even indexed character is uppercased
2. each odd indexed character is lowercased
3. cases reset with each word, so the case index doesn't carry though the entire problem
---
**Implicit Requirements** (if needed)
1. don't consider inputs that aren't alphanumeric characters
2.
3.
---
Examples 
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: "this"
  -  Output: "ThIs"
-  Example 2
  -  Inputs: "This is not acceptable"
  -  Output: "ThIs Is NoT AcCePtAbLe"
---
Data Structures
--------------
arrays
---
Scratch Pad/Working Area
--------------------------------------------------

string => words => chars => words => string
                     ^ transform these characters based on index being even or odd 
--------------------------------------------------
Algorithm
---------
sub method for weird case
accepts a word
initialize index to 0
converts word to array of characters
transforms each character into uppercase or lowercase based on index being even or odd
increments index
joins array of characters back into a string
returns string

split input string at spaces, store result in variable `words`
transform each word with weird case sub method
join array of transformed words, store result in `result`
return result
=end

def weird_word(string)
  index = 0
  characters = string.chars
  characters.map do |char|
    char.upcase! if index.even?
    char.downcase! if index.odd?
    index += 1
  end
  characters.join
end

def weirdcase(string)
  words = string.split
  words.map! do |word|
    weird_word(word)
  end
  words.join(" ")
end

p weirdcase("This is not your father")