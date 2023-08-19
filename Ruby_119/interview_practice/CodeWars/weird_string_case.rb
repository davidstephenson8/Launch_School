=begin
==============
Problem: 
return a string with all even indexed letters in a word uppercased, all odd numbers lowercased
------------------------
-  Inputs: a string of words
-  Output: words with weird cases
---
Explicit Rules
1. spaces don't count
2.
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
split each string into words
iterate through the words
  iterate theough the characters in each word with index, if the index is ever, uppercase the letter, 
  if not lowercase the letter. Join these characters, transform current words to that value
join words with a space
---
=end

def weirdcase(string) 
  words = string.split
  words.map! do |word|
    word.chars.map!.with_index do |char, index|
      if index.even?
        char.upcase
      else
        char.downcase
      end
    end.join
  end.join(" ")
end
p weirdcase( "String" ) == "StRiNg"
p weirdcase( "Weird string case" ) == "WeIrD StRiNg CaSe"
