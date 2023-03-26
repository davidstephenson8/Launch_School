=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: a string
-  Output: an integer
---
**Problem Domain:**
---
**Implicit Requirements:**
---
**Clarifying Questions:**
1. Do I need to worry about user input?
2. 
3.
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs:
  -  Output:
-  Example 2
  -  Inputs:
  -  Output:
---
_Your Test Cases:_
-  Example 3
  -  Inputs:
  -  Output:
---
_Your Edge Cases:_
-  Example 4
  -  Inputs:
  -  Output:
---
Data Structure
--------------
---
Algorithm
---------
split string values out into an array
at each array position, compare the string value to a set of string values from 1-10.
  return the integer value that corresponds to each string value at each position (eg 1 for "1")
determine the size of the array
iterate through each value in the array
in each iteration
  multiply the value by a value of ten exponentiated to the array size
  decrease the value of the array size integer by one
sum each value in the array
Code
----
=end

def string_to_integer(string)

  digits = string.split("")

  digits.map! do |digit|
    if digit == "0"
      digit = 0
    elsif digit == "1"
      digit = 1
    elsif digit == "2"
      digit = 2
    elsif digit == "3"
      digit = 3
    elsif digit == "4"
      digit = 4
    elsif digit == "5"
      digit = 5
    elsif digit == "6"
      digit = 6
    elsif digit == "7"
      digit = 7
    elsif digit == "8"
      digit = 8
    elsif digit == "9"
      digit = 9
    end
  end

  exponent = digits.size
  index = 0

  while exponent > 0
    digits[index] = digits[index] * (10 ** (exponent-1))
    exponent -= 1 
    index += 1
  end
  
  digits.sum

end



p string_to_integer("101011")
p string_to_integer("51235")
p string_to_integer('4321')
p string_to_integer('570')
p string_to_integer('4321') == 4321
p string_to_integer('570') == 570