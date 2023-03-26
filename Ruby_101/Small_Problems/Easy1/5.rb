=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: a string
-  Output: a string with the words in reverse order
---
**Implicit Requirements:**
- Words in the middle stay in the middle
- Individual words should not be effected
---
**Clarifying Questions:**
1. if numbers are included in the string should those be treated as words?
2. 
3.
---
**Mental Model:**

The program will take the string, split it up into different words, store them, and then merge them back
together in a new string in a different order
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: "The quick brown fox jumped over the lazy dog"
  -  Output: "dog lazy the over jumped fox brown quick The"
-  Example 2
  -  Inputs: "123 446"
  -  Output: "446 123"
---
_Your Test Cases:_
-  Example 3
  -  Inputs: ""
  -  Output: ""
---
_Your Edge Cases:_
-  Example 4
  -  Inputs:"           "
  -  Output:""
---
Data Structure
I think I'll store the broken up strings in an array and then pull them out with pop to reverse the 
order. 
---
Algorithm

split string into substrings
store each substring in an array
pull each substring out
merge each substring into a new string, adding spaces as we go 
print new string

=end

def reverse_sentence(string)
  words = string.split.reverse
  reverse = words.join(" ")
  p reverse
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

# This is my second go around after some help from the solution last time about a week ago. 