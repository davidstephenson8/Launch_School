=begin


==============
Problem

write a method that rotates the last n digits of a number
------------------------
-  Inputs: two integers, the number to be rotated and the number of digits to rotate
-  Output: the rotated integer
---
** Rules **
Explicit
1. second number says the number of integers to rotate 
2. 
3. 

Implicit
1. only rotating 1 means no number is rotated
2.
3.


---
Examples 
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 735291, 4
  -  Output: 732915
-  Example 2
  -  Inputs: 
  -  Output: 
---
Modelling/Scratch Pad
--------------------------------------------------

73  5291 => [5, 2, 9, 1] => [2, 9, 1, 5]

[73] + [2, 9, 1, 5]

--------------------------------------------------
Data Structures
--------------
arrays

---
Algorithm
---------
initialize variable `digits` to the convert integer into an array of digits
assign new variable `fragment` to the last n digits of the array, where n is the second given integer
rotate `fragement`
create an array of the rotated and non-rotated digits, assign it to `result`
  non-rotated digits are from 0 up to but not including negative given integer
  rotated are from negative given integer to -1
join `result`
convert `result` to an integer
return that integer
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
  
  p rotate_rightmost_digits(735291, 1) == 735291
  p rotate_rightmost_digits(735291, 2) == 735219
  p rotate_rightmost_digits(735291, 3) == 735912
  p rotate_rightmost_digits(735291, 4) == 732915
  p rotate_rightmost_digits(735291, 5) == 752913
  p rotate_rightmost_digits(735291, 6) == 352917