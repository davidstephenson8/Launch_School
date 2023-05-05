=begin
==============
Problem

# Write a method that takes an array of integers and returns the
# two numbers that are closest together in value.
------------------------
-  Inputs: array of integers
-  Output: array of 2 integers closest in value
---
**Explicit Requirements**
1. two integers should be closest in value
2. return should be array of two elements
3.
---
**Implicit Requirements** (if needed)
1. elements should be returned in the order that they appear in the original array
2.
3.
---
Examples 
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: [5, 25, 15, 11, 20]
  -  Output: [15, 11]
-  Example 2
  -  Inputs:
  -  Output:
---
Scratch Pad/Working Area
--------------------------------------------------

create a set of each possible pairs

0 1 0 2 0 3 0 4 (just looking at indicies here, so index 0 with all of the other possibile indicies in a 5 element array)
1 2 1 3 1 4
2 3 2 4 
3 4

so I'll iterate through an array one time, pairing with each possible other number
and push each pair to a results array
then on the next iteration, I'll move the starting index up by one and only iterate over the numbers after the current number
I can do that if I iterate over [index1 + 1..-1] to make the pairs

Then once I've got the pairs 


--------------------------------------------------
Data Structures
--------------

---
Algorithm
---------
initialize a `pairs` array
iterate through each number in the array
  for each number, start a subiteration on a slice of the array starting at one after that number and going to the 
  end of the array
  add an array containing the number from the primary iteration and the number from the subiteration to the pairs array
return the pair that returns the smallest value when the absolute value of their difference is calculated from the pairs array
=end

def closest_numbers(array)
  pairs = []
  array.each_with_index do |num1, index1|
    array[index1 + 1..-1].each_with_index do |num2, index2|
      pairs << [num1, num2]
    end
  end
  pairs.min_by {|pair| (pair[0] - pair[1]).abs}
end

# Examples:

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]

# The tests above should print "true".