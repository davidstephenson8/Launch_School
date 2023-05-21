=begin
==============
Problem
given an integer, return the difference of the sum of each integer squared up to that integer
and each integer up to that integer squared 

------------------------
-  Inputs: integer
-  Output: integer
---
** Rules **
Explicit
1. 
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
create an array of numbers from 1 to the given integer
transform that array into each of those numbers squared and set that equal to `squares`
sum the original array, square that number, subtract the sum of squares from that number
=end

def sum_square_difference(int)
  numbers = (1..int).to_a
  squares = numbers.map do |num|
    num ** 2
  end
  numbers.sum ** 2 - squares.sum
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150