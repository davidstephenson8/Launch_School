=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: an array
-  Output: an array of the running total
---
**Clarifying Questions:**
1. What should I do with nil in an array? 
2. Do negative numbers also get added to the total?
3. 
---
**Mental Model:**

I need to add the numbers in the array up. Having a running total outside of my loop I think could be effective. I also could just have a sum in my 
loop.

---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs:
  -  Output:
-  Example 2
  -  Inputs:
  -  Output:
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
Arrays
---
Algorithm
---------
initialize empty array to store values from running total

iterate through an array a number of times equal to its size.
initialize variable sum as equal to first number in array.
set first value in running total array equal to sum.
add next value in array to variable sum.
set second value in running total array equal to sum. 
continue iterating until array size is zero. 
Code
----
=end

def running_total(initial_array)
  sum = 0

  initial_array.each_with_object([]) do |number, running_total|
    sum += number
    p sum
    running_total << sum
    p running_total
  end
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []