=begin
==============
Problem
write a method that returns a symbol of the type of triangle determined by the sides of the triangle passed into a method

------------------------
-  Inputs: integers (triangle side lengths)
-  Output: symbols (types of triangles from sides)
---
** Rules **
Explicit
1. 4 possible symbols
2. sum of two smallest sides needs to be greater than the size of longest side
3. sides can't be zero

Implicit
1. 
2.
3.


---
Examples 
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 3, 3, 3
  -  Output: equilateral
-  Example 2
  -  Inputs: 3, 2, 1
  -  Output: scalene
---
Modelling/Scratch Pad
--------------------------------------------------



--------------------------------------------------
Data Structures
--------------


---
Algorithm
---------
put integers into array
set maximum = -1
set variable `smaller_sides` to an empty array 
iterate through the array
  if current number is bigger than maximum, set maximum equal to current number, add current maximum to 
    `smaller_sides` array unless maximum = -1
  if current number is less than maximum add to `smaller_sides` array
add two smallest sides together, check if total is longer than largest side
  return :invalid if not
return :invalid if any of the values in the array are 0 
if the count of the first value in the array is 3 return :equilateal
iterate through the array
  if any of the values in the array have a count of 2 within the array return :isoceles

return :scalene if neither of the above cases are true 
=end

def triangle(int1, int2, int3)
  maximum = -1
  smaller_sides = []
  sides = [int1, int2, int3]
  sides.each do |side|
    if side > maximum
      smaller_sides << maximum unless maximum == -1
      maximum = side
    else
      smaller_sides << side
    end
  end
  return :invalid if smaller_sides.sum < maximum
  return :invalid if sides.any?(0)
  return :equilateral if sides.count(sides[0]) == 3
  sides.each do |side|
    if sides.count(side) == 2
      return :isosceles
    end
  end
  :scalene
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
