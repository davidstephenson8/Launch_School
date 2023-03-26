=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: an integer
-  Output: a boolean
---
**Problem Domain:**
---
**Implicit Requirements:**
---
**Clarifying Questions:**
1. How to return a boolean from an integer based on its characteristics? 
2. 
3.
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 1
  -  Output: true
-  Example 2
  -  Inputs: 14
  -  Output: false
---
_Your Test Cases:_
-  Example 3
  -  Inputs: 0
  -  Output: false

  -  Inputs: nil
  -  Output: false


---
_Your Edge Cases:_
-  Example 4
  -  Inputs: 23406234069234
  -  Output: true
---
Data Structure
Just some variables work great here
---
Algorithm
take variable, apply modulo, use if then statements to output different code based on boolean. 
Code
----
=end

def is_odd?(integer)
  remainder = integer.remainder(2)
  if remainder.abs == 1
    puts true
  else
    puts false
  end
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true