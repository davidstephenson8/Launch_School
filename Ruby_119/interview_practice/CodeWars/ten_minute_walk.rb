=begin
==============
Problem
you want to take a ten minute walk that returns you to where you started and takes exactly ten minutes
------------------------
-  Inputs: an array containing strings with "n" or "s"
-  Output: a boolean
---
** Rules **
Explicit
1. walk must be 10 minutes long
2. must return you to starting place
3. 

Implicit
1. no other strings will be passed in but "n", "s", "e", and "w"
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

I'm thinking I return true if the counts of N and S/E and W are the same and if the array is 10 items long

--------------------------------------------------
Data Structures
--------------


---
Algorithm
---------
check to see if the array has the same numbers of "n" and "s" and the same number of "e" and "w"
  if the array doesn't have the right count for either of those strings, return false
check to see if the array is ten items long. 
  if it's not return false
return true if both of these conditions are met
=end

def is_valid_walk(array)
  return false unless array.count("n") == array.count("s") 
  return false unless array.count("e") == array.count("w")
  return false unless array.size == 10
  true
end

p is_valid_walk(['n','s','n','s','n','s','n','s','n','s']) == true
p is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e']) == false
p is_valid_walk(['w']) == false
p is_valid_walk(['n','n','n','s','n','s','n','s','n','s']) == false
