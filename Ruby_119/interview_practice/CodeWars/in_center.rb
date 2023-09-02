=begin
==============
Problem: 

------------------------
-  Inputs: 
-  Output: 
---
Rules
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
Data Structures/High Level Algo
--------------

---
Algorithm
---------
helper method?
check rules
---
=end

def is_central(txt)
  middle = txt.size / 2
  characters = txt.chars
  characters.each_with_index do |char, index|
    return index == middle if char != " " 
  end
end
