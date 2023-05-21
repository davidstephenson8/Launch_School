=begin
==============
Problem

returns true if parentheses are balanced, false if not

------------------------
-  Inputs: a string
-  Output: a boolean. Value determined by whether or not string hash balanced parenthesis 
---
** Rules **
Explicit
1. balance parentheses occur in matching pairs '()'
2. 
3. 

Implicit
1. all '(' parenthesis must be matched by a ')' parenthesis
2.
3.


---
Examples 
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: '((What)) (is this))?'
  -  Output: false
-  Example 2
  -  Inputs: '((What) (is this))?'
  -  Output: true
---
Modelling/Scratch Pad
--------------------------------------------------
original string => (())()) => ()()) => ()) => ) 


--------------------------------------------------
Data Structures
--------------
array

---
Algorithm
---------
convert given string to a string of characters, store in `characters`
iterate through each character in `characters`
  start a subiteration of each character after original character in `characters`
  if character is "("
    if other character is "("
  modify the array to contain spaces at each of the indicies of those characters
if the characters array includes "(" or ")" return false
if not return true
=end

def balanced?(string)
  characters = string.chars
  characters
  characters.each_with_index do |char, index|
    characters[index + 1..-1].each_with_index do |char2, index2|
      if char == "(" && char2 == ")"
        characters[index] = " "
        characters[index2 + index + 1] = " "
        break
      end
    end
  end
  characters
  return false if characters.include?("(")
  return false if characters.include?(")")
  true
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
