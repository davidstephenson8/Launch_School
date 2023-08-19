=begin
==============
Problem: 
create a method that returns the digital root of a given integer
------------------------
-  Inputs: integer
-  Output: integer
---
Explicit Rules
1. digital root is a single digit
2. input is a non-negative integer
3.

Implicit Rules
1.
2.
3.

Examples:
-  Example 1
  -  Inputs: 942
              15
              6
  -  Output:
-  Example 2
  -  Inputs:
  -  Output:
---
---
Data Structure
--------------

---
Algorithm
---------
until the sum of the digits in `n` is 1 do a loop
  reassign n to the sum of the digits of n
return n
---
=end

def digital_root(n)
  integer = n
  loop do 
    integer = integer.digits.sum
    break if integer < 10
  end
  integer
end

p digital_root(16) #== 7
p digital_root(456) #== 6