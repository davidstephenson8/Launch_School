# Write a method that takes an array of integers and returns the
# two numbers that are closest together in value.



=begin



==============
Problem

return the two numbers closest together in value from an array
------------------------


-  Inputs: an array
-  Output: array containing two closest values 
---
** Rules **
Explicit
1. 
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
  -  Inputs: [1, 2, 3, 4, 5]
  -  Output: [2, 3, 4, 5, 1]
-  Example 2
  -  Inputs: ["a", "b", "c"]
  -  Output: ["b", "c", "a"]
---
Modelling/Scratch Pad
--------------------------------------------------

maybe <<? 

--------------------------------------------------
Data Structures
--------------
arrays
---
Algorithm
---------
initialize a `smallest_difference` integer to be the first two integers in the array
iterate over each integer in the array
  for each integer, subtract it from each other integer in the array
  compare that difference to `smallest_difference`
  if smaller, set array of two current integers equal to `smallest_difference`
return smallest difference

=end

def rotate(arr)
  arr[1..-1] + [arr[0]]
end

p rotate([5, 25, 15, 11, 20]) == [25, 15, 11, 20, 5]
p rotate([19, 25, 32, 4, 27, 16]) == [25, 32, 4, 27, 16, 19]
p rotate([12, 7, 17]) == [7, 17, 12]