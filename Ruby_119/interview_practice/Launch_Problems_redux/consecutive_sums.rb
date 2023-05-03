=begin
==============
Problem
# Write a method that takes one argument: an array of integers.
# The method should return the minimum sum of 5 consecutive
# numbers in the array. If the array contains fewer than 5
# elements, the method should return nil.
------------------------
-  Inputs: array of integers
-  Output: integer (minimum sum of 5 consecutive elements)
---
**Explicit Requirements**
1. if array contains less than 5 elements, method should return nil
2. method should return minimum sum
3. must be of at least 5 elements
---
**Implicit Requirements** (if needed)
1. negative sums can be returned
2.
3.
---
Examples 
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: [1, 2, 3, 4]
  -  Output: nil
-  Example 2
  -  Inputs: [55, 2, 6, 5, 1, 2, 9, 3, 5, 100]
  -  Output: 16
---
Scratch Pad/Working Area
--------------------------------------------------

make array of all possible 5 consecutive value arrays, transform into sums of each, return minimum

[0..4] [1..5] [2..6]

ok, so iterate through the array, taking slices of the array from current index to current index + 4
should be able to start from 0 and iterate until the second is equal to the size of the array minus one.

then take the results array and transform each value into its sum and return the minimum value from that array


--------------------------------------------------
Data Structures
--------------
arrays
---

Algorithm
---------
initialize a results array to an empty array
return nil if the array size is less than 5 
iterate through the input array
  add slices of the array from current index to current index + 4 to results array
  if current index + 4 is the same as one less than the size of the array, break out of the iteration
transform each element in the results array to the sum of that subarray
return the minimum value from the results array
=end

# Examples:

def minimum_sum(array)
  results = []
  return nil if array.size < 5
  array.each_with_index do |num, index|
    results << array[index..index + 4]
    break if index + 4 == array.size - 1
  end
  (results.min_by {|subarray| subarray.sum}).sum
end

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

# The tests above should print "true".