=begin
==============
Problem
reverse an array without using the built in reverse method

------------------------
-  Inputs: array
-  Output: reversed array
---
** Rules **
Explicit
1. can't use reverse
2. returned array should be first array in reverse
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
  -  Output: [5, 4, 3, 2, 1]
-  Example 2
  -  Inputs: ["a"]
  -  Output: {"a"}
---
Modelling/Scratch Pad
--------------------------------------------------



--------------------------------------------------
Data Structures
--------------
arrays
---
Algorithm
---------
assign an empty array to `reverse`
iterate through the given array
  for the index of the element, set reverse at that index equal to the negative value of that index plus ≥ one
return `reverse`
=end

def hard_reverse(array)
  reverse = []
  array.each_with_index do |ele, index| 
    reverse[index] = array[-(index + 1)]
  end
  reverse
end


p hard_reverse([:a, :b, :c, :d, :e]) == [:a, :b, :c, :d, :e].reverse
p hard_reverse([:a]) == [:a].reverse
p hard_reverse([]) == []
p hard_reverse([:a, :b, :c, :d, :e, :a, :b, :c, :d, :e, :a, :b, :c, :d, :e, :a, :b, :c, :d, :e, :a, :b, :c, :d, :e, :a, :b, :c, :d, :e, :a, :b, :c, :d, :e]) == [:a, :b, :c, :d, :e, :a, :b, :c, :d, :e, :a, :b, :c, :d, :e, :a, :b, :c, :d, :e, :a, :b, :c, :d, :e, :a, :b, :c, :d, :e, :a, :b, :c, :d, :e].reverse