=begin
==============
Problem

take an integer and return an integer that represents how many times that integer's digits need to be multiplied together to 
get a digit that is a single digit
------------------------
-  Inputs: integer
-  Output: integer (number of multiplications)
---
** Rules **
Explicit
1. single digit numbers return 0
2. 
3. 

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
start a counter of number of times number needs to be mupltiplied
start a loop
break number into component digits
  if this array has a size of 1, return counter variable
multiply digits, reassign int to this value
increment the counter

=end

def persistence(int)
  counter = 0
  loop do
    digits = int.digits
    return counter if digits.size == 1 
    int = int.digits.inject(:*)
    counter += 1
  end
end

p persistence(39) == 3
p persistence(4) == 0
p persistence(25) == 2
p persistence(999) == 4
