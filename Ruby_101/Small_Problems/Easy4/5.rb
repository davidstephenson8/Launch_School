=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: integers
-  Output: the sum of all multiples of 3 and 5
---
**Implicit Requirements:**
---
**Clarifying Questions:**
1. If a number is a multiple of 3 and 5, should I include it twice in the sum?
2. 
3. 
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 3
  -  Output: 3
-  Example 2
  -  Inputs: 8
  -  Output: 14
---
_Your Test Cases:_
-  Example 3
  -  Inputs:
  -  Output:
---
_Your Edge Cases:_
-  Example 4
  -  Inputs:
  -  Output:
---
Data Structure
--------------
---
Algorithm
---------
set up an array for numbers that are multiples of three
set up an array for numbers that are mupltiples of five
set iterations to 0

set up a while loop to continue while the number of iterations is less than the number
  increment iteration
  add number to multiples of three array if it's divisible by 3 without a remainder
  add number to multiples of five array if it's divisible by 5 without a remainder
end loop once we've done it number times

Merge the two arrays
Eliminate duplicate values
Sum the values in the array

=end

def multisum(number)
  multiples_of_three = []
  multiples_of_five = []
  i = 0

  while i < number
    i += 1
    multiples_of_three << i if i % 3 == 0
    multiples_of_five << i if i % 5 == 0
  end
  
  multiples_of_three.union(multiples_of_five).sum
end


p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168