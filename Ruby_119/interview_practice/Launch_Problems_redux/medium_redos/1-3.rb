=begin
==============
Problem

given an integer, return another integer that represents the max rotation of that number
------------------------
-  Inputs: integer 
-  Output: integer
---
** Rules **
Explicit
1. max rotation means that each digit is rotated with any other digit that has not been rotated
2. leading zeros are dropped
3. single digits do not change

Implicit
1. 
2.
3.


---
Examples 
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 735291
             352917
             ^
             329175
             ^^
             321759
             ^^^
             321597
             ^^^^
             321579
             ^^^^^
  -  Output: 321579
-  Example 2
  -  Inputs: 

  -  Output: 
---
Modelling/Scratch Pad
--------------------------------------------------

  -  Inputs: 735291 < 1st number

             352917 < 2nd number
             ^
             329175 < 3rd number
             ^^
             321759 <4th
             ^^^
             321597 <5th
             ^^^^
             321579 <6th
             ^^^^^
  -  Output: 321579

--------------------------------------------------
Data Structures
--------------


---
Algorithm
---------
iterate through a range of numbers from size of the array down to 1
  rotate the integer based on current number
  save result as integer
return integer

=end

def rotate(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(integer, rotate_number)
  digits = integer.digits.reverse
  fragment = digits[-rotate_number, rotate_number]
  rotated_fragment = rotate(fragment)
  result = digits[0...-rotate_number] + rotated_fragment
  result.join.to_i
end
  
def max_rotation(int)
  (int.to_s.size).downto(2) do |num|
    int = rotate_rightmost_digits(int, num)
  end
  int
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845