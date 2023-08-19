=begin
==============
Problem: 
for a given array, find the index where the sum of integers on one side of the array is the same as the sum of integers on
  the left side of the array. Return -1 if this is not possible
------------------------
-  Inputs: array
-  Output: index
---
Explicit Rules
1.
2.
3.

Implicit Rules
1.
2.
3.

Examples:
-  Example 1
  -  Inputs:
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
iterate through the array
  if the elements before the current index are the same as the sum of the elements after the current index. return the current
    index
  if iteration completes without an index being returned, return negative 1
---
=end

def find_even_index(arr)
  arr.each_with_index do |int, index|
    return index if arr[0...index].sum == arr[index + 1..-1].sum
  end
  -1
end

p find_even_index([1,2,3,4,3,2,1])# == 3
p find_even_index([1,100,50,-51,1,1]) #== 1
p find_even_index([1,2,3,4,5,6]) == -1
p find_even_index([20,10,30,10,10,15,35]) == 3
p find_even_index([20,10,-80,10,10,15,35]) #== 0
p find_even_index([10,-80,10,10,15,35,20]) == 6
p find_even_index(Array(1..100)) == -1
p find_even_index([0,0,0,0,0]) == 0
p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3
p find_even_index(Array(-100..-1)) == -1
