=begin
==============
Problem: 
return the sum of all of the integers below a certain number that are a multiple of 3 or 5
------------------------
-  Inputs: integer
-  Output: integer
---
Explicit Rules
1. multiples of both 3 and 5 only count once 
2. if the number is negative return 0
3.

Implicit Rules
1.
2.
3.

Examples:
-  Example 1
  -  Inputs: 20
  3, 5, 6, 9, 10, 12, 15, 18
  -  Output: 78
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
generate an array with all of the integers from 0 up to the given integer, assign to `integers`
assign variable `multiples` to the selection of multiples  of 3 and 5 from integers
sum multiples, return this value
---
=end

def solution(number)
  integers = (0...number).to_a
  multiples = integers.select do |number|
    number % 3 == 0 || number % 5 == 0
  end
  multiples.sum
end

p solution(10) == 23
p solution(20) == 78
p solution(200) == 9168
