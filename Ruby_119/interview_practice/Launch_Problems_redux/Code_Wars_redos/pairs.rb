=begin
==============
Problem
You are given array of integers, your task will be to count all pairs in that array and return their count.

Notes:

Array can be empty or contain only one value; in this case return 0
If there are more pairs of a certain number, count each pair only once. E.g.: for [0, 0, 0, 0] the return value is 2 (= 2 pairs of 0s)
Random tests: maximum array length is 1000, range of values in array is between 0 and 1000
Examples

[1, 2, 5, 6, 5, 2]  -->  2
...because there are 2 pairs: 2 and 5

[1, 2, 2, 20, 6, 20, 2, 6, 2]  -->  4
...because there are 4 pairs: 2, 20, 6 and 2 (again)
------------------------
-  Inputs: array of integers
-  Output: number of pairs
---
**Explicit Requirements**
1. return an integer that's number of pairs
2. if the array is empty or only has one number, return 0
3. count each pair only once
---
**Implicit Requirements** (if needed)
1.
2.
3.
---
Examples 
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: [1, 2, 2, 20, 6, 20, 2, 6, 2]
  -  Output: 4
-  Example 2
  -  Inputs: [1, 1, 2, 2, 1, 3, 2, 1]
  -  Output: 3
---
Scratch Pad/Working Area
--------------------------------------------------
so I'm thinking I could just iterate through an array with all of the unique integers and then transform each integer into 
the count of that integer divided by 2 in the original array and then return the sum of that array. So something like

[1, 2, 2, 20, 6, 20, 2, 6, 2] to uniques [1, 2, 20, 6]

and then transforming each to the count of that integer in the first array divided by 2 

[0, 2, 1, 1]

and then the sum of that

4



--------------------------------------------------
Data Structures
--------------
arrays
---
Algorithm
---------
initializes uniques to an array containing only the unique values from the original array
transform the values in this array to the count of each integer in the original array divided by 2
return the sum of that array
=end

def pairs(array)
  uniques = array.uniq
  pairs = uniques.map do |integer|
    array.count(integer) / 2
  end
  pairs.sum
end

p pairs([1, 2, 3, 4, 4, 3, 2, 1])
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2])
p pairs([])