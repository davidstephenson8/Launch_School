=begin
==============
Problem: 
return the maximum number possible after deleting one digit
------------------------
-  Inputs: integer
-  Output: integer
---
Explicit Rules
1. delete only one digit from number
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
initialize `string` to the integer converted to string
convert `string` into an array conteining each individual integer, assign digits to this value
transform `digits` with an index value
  replace each digit with string with that number deleted
initialize `values` to the result of transforming each string in the array to its integer equivalent
return the maximum number from the transformed array
---
=end

def delete_digit(n)
  string = n.to_s
  digits = string.chars
  deleted_strings = digits.map.with_index do |number, index|
    string[0...index] + string[index + 1 .. -1]
  end
  values = deleted_strings.map(&:to_i)
  values.max
end

p delete_digit(152) #== 52
p delete_digit(1001) #== 101
p delete_digit(10) #== 1
