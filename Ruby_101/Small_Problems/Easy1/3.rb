=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: an integer
-  Output: an array with each integer in it
---
**Problem Domain:**
---
**Implicit Requirements:**

convert the integer into a format that would be compatible with an array
---
**Clarifying Questions:**
1.
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

convert integer into string
split each character in the string into an array
iterate through the array and convert the strings into integers

Code
----
=end

def digit_list(integer)
  digit_array = integer.to_s.split("")
  digit_array.map {|n| n.to_i}
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true