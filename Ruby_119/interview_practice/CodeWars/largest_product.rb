=begin
(https://www.codewars.com/kata/54b42f9314d9229fd6000d9c/train/ruby)
6 kyu
The goal of this exercise is to convert a string to a new string where each character in the new 
string is "(" if that character appears only once in the original string, or ")" if that character appears more than once 
in the original string. 
Ignore capitalization when determining if a character is a duplicate.
=begin
==============
Problem: 
transform a string so that any character that appears once in the original string is an open parenthesis, and any character that
appears more than once is a close parenthesis
------------------------
-  Inputs: string
-  Output: string
---
Explicit Rules
1. ignore capitalization
2.
3.

Implicit Rules
1.
2.
3.

Examples:
-  Example 1
  -  Inputs: "din"
  -  Output: "((("
-  Example 2
  -  Inputs: "recede"
  -  Output: "()()()"
---
---
Data Structure
--------------

---
Algorithm
---------
convert original string to characters, assign to `chars`
transform chars
  if the count of the character is 1, return "("
  if count of the character is more than 1 return "("
join and return chars

---
=end

def duplicate_encode(str)
  characters = str.downcase.chars
  characters.map! do |char|
    str.count(char) == 1 ? "(" : ")"
  end
  characters.join
end

p duplicate_encode("din") == "((("
p duplicate_encode("recede") == "()()()"
p duplicate_encode("Success") == ")())())"
p duplicate_encode("(( @") == "))(("
