=begin
==============
Problem

write a program that describes a triangle as right, obtuse, acute or invalide based on angles passed to the program
------------------------
-  Inputs: integers
-  Output: symbols
---
** Rules **
Explicit
1. if an angle is 0 the triangle is invalid 
2. if the angles don't sum to 180 the triangle is invalid
3. right triangles have one 90 degree angle
4. acute triangles have all angles less than 90
5. obtuse triangles have one angle greater than 90

Implicit
1. 
2.
3.


---
Examples 
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 30. 60. 90
  -  Output: :right
-  Example 2
  -  Inputs: 90, 90, 10
  -  Output: :invalid
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
put angles into an array
return invalid if any of the angles are 0 or the sum of the angles isn't 180
return right if one of the angles is 90
return obtuse if one of the angles is greater than 90
or else return acute
=end

def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]
  return :invalid if angles.any?(0) || angles.sum != 180
  return :right if angles.any?(90)
  return :obtuse if angles.any?{ |side| side > 90}
  :acute
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
