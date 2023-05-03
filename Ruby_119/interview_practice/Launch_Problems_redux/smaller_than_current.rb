=begin
==============
Problem
Given an array of numbers, find out how many numbers in the current array are smaller than it. When counting
numbers, only count unique values. That is, if a number occurs multiple times in the array, it should only
be counted once
------------------------
-  Inputs: an array of integers
-  Output: an array of the count of numbers smaller than the current number
---
**Explicit Requirements**
1. only count unique values when counting the number of integers smaller than the number
2. return the number of elements smaller than current element
3.
---
**Implicit Requirements** (if needed)
1. output is an array
2.
3.
---
Examples 
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: [6, 5, 4, 8]
  -  Output: [2, 1, 0, 3]
-  Example 2
  -  Inputs: [8,1,2,2,3]
  -  Output: [3, 0, 1, 1, 2]
---
Scratch Pad/Working Area
--------------------------------------------------

[8,1,2,2,3] - > [8, 1, 2, 3]
iterate through the array
with each iteration, compare each value to array of uniques. 
  transform the value to the count of uniques that are less than the current number
[3, 0, 1, 1, 2]

--------------------------------------------------
Data Structures
--------------
arrays
---

Algorithm
---------
store unique values from original array in `unique values` array
iterate through original array
  transform each value in original array to count of numbers less than the current number
return transformed array
=end

def smaller_numbers_than_current(array)
  uniques = array.uniq
  array.map do |num|
    uniques.count{|comparison| comparison < num}
  end
end

p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]                           
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]