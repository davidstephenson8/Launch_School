=begin
==============
Problem: 
two arrays are the same if one has the squares of all of the numbers in the other one. Write a method
that checks to see if two arrays are the same
------------------------
-  Inputs: two arrays
-  Output: boolean
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
assign `squares` to a transformation of a
  square each value in a
sort squares
sort b
compare squares and b and return the result of that comparison
=end

def comp(a, b)
  return false if a.nil? || b.nil?
  squares = a.map do |int|
    int ** 2
  end
  squares.sort == b.sort
end

p comp([121, 144, 19, 161, 19, 144, 19, 11], [121, 14641, 20736, 361, 25921, 361, 20736, 361]) == true
p comp([121, 144, 19, 161, 19, 144, 19, 11] , [132, 14641, 20736, 361, 25921, 361, 20736, 361]) == false
p comp(nil, [1, 2, 3]) == false
p comp([1, 2], []) == false
p comp([1, 2], [1, 4, 4]) == false
