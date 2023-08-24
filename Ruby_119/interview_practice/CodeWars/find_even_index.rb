=begin
==============
Problem: 
find the index where the sum of the integers to the left of the index is the same as the sum of the integers to the 
right of the index. If there is no sum, return -1. The number at the given index is not included.
------------------------
-  Inputs: array of integers
-  Output: integer (index where sums are equal)
---
Rules
1. return -1 if no solution
2. If all numbers sum to 0 on right or left, return 0 or last index
3. 

Examples:
-  Example 1
  -  Inputs: [20, 10, -80, 10, 10, 15, 35]
              10 + -80 + 10 + 10 + 15 + 35
  -  Output: 0
-  Example 2
  -  Inputs: [-1, -2, -3, -4, -3, -2, -1]
  -  Output: 3 
---
---
Data Structure/Modelling
--------------
iterate through array
  at each index sum numbers to right and numbers to left
  if numbers are equal, return current index
---
Algorithm
---------
iterate through the array, taking note of index
  compare sum of numbers to the left to sum of numbers to the right
    to get the subarray of numbers to the left, take the range from 0 up to but not including the current index
    to get the subarray of numbers to the right, take the fange from one past the current index to the end of the arrays
  if equal, return index
return -1 if iteration completes and no parts are equal
---
=end

def find_even_index(array)
  array.each_with_index do |num, index|
    return index if array[0...index].sum == array[(index + 1)..-1].sum
  end
  -1
end

p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3
p find_even_index([1, 100, 50, -51, 1, 1]) == 1
p find_even_index([1, 2, 3, 4, 5, 6]) == -1
p find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
p find_even_index([20, 10, -80, 10, 10, 15, 35]) == 0
p find_even_index([10, -80, 10, 10, 15, 35, 20]) == 6
p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3