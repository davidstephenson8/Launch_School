=begin
==============
Problem
Your goal is to write the group_and_count method, which should receive an array as a unique parameter and return a hash. 
Empty or nil input must return nil instead of a hash. This hash returned must contain as keys the unique values of the array,
and as values the counting of each value.

Example usage:

input = [1,1,2,2,2,3]

group_and_count(input)# == {1=>2, 2=>3, 3=>1}
------------------------
-  Inputs: array of integers
-  Output: hash (keys are values in the array, values are counts of each value in array)
---
**Explicit Requirements**
1. output is hash
2. keys of hash are values in the original array, values are counts of each value in array
3. empty array or nil output returns nil instead of a hash
---
**Implicit Requirements** (if needed)
1. no count or size
2.
3.
---
Examples 
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: [0. 1. 1. 0]
  -  Output: {0 => 2, 1 => 2}
-  Example 2
  -  Inputs:
  -  Output:
---
Data Structures
--------------
hash for results
---
Scratch Pad/Working Area
--------------------------------------------------

[0, 1, 1, 0]
 ^        ^

--------------------------------------------------
Algorithm
---------
if array is empty or array is nil, return nil
create empty result hash
interate through the array 
  for each value, check to see if hash contains key equal to value
    if no key, initialize key/value pair with value as one
    if key with int value, increment value by one
  
   
=end

def group_and_count(input)
  return nil if input == nil || input == []
  result = {}
  input.each do |num|
    if result[num] == nil
      result[num] = 1
    else
      result[num] += 1
    end
  end
  result
end

p group_and_count([0, 1, 1, 0])
p group_and_count(nil)
p group_and_count([])
