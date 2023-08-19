=begin
==============
Problem: 
given an array, return a phone number
------------------------
-  Inputs: an array of digits
-  Output: a phone number in string form
---
Rules
1. 
2. 
3. 

Examples:
-  Example 1
  -  Inputs: [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
  -  Output: (123) 456-7890
-  Example 2
  -  Inputs:
  -  Output:
---
---
Data Structure/Modelling
--------------

---
Algorithm
---------
   create a string
   with string interpolation, return the first three digits joined inside of the parenthesis, the next three digits joined before
   the dash and the last four digits joined after the dash
---
=end

def create_phone_number(numbers)
  "(#{numbers[0..2].join}) #{numbers[3..5].join}-#{numbers[6..9].join}"
end

p create_phone_number([1, 1, 1, 1, 1, 1, 1, 1, 1, 1])