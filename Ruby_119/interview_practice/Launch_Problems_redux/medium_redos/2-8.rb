=begin
==============
Problem

given an integer, return the next number that is divisible by 7 and contains all unique numbers
------------------------
-  Inputs: 
-  Output:
---
** Rules **
Explicit
1. return an error if no number higher than this number is possible
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
test_integer = given integer + 1
start a loop
  if test_integer is evenly divisible by 7 and all of the digits are unique, return test integer
  increment test integer by one
=end

def featured(integer)
  if integer >= 9_999_999_999
    puts "number too high"
    return nil
  end
  test_integer = integer + 1
  loop do
    break if test_integer % 7 == 0 && (test_integer.digits.uniq == test_integer.digits) && test_integer.odd?
    test_integer += 1
  end
  test_integer
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999)
