# You will be given a number and you will need to return it as a string in expanded form. For example:
#
# expanded_form(12); # Should return '10 + 2'
# expanded_form(42); # Should return '40 + 2'
# expanded_form(70304); # Should return '70000 + 300 + 4'
#
# Note: All numbers will be whole numbers greater than 0.

=begin
==============
Problem
for an integer, return a string broken out into hundreds, 10s, 1s, etc
that can be added to make the integer
------------------------
-  Inputs: integer
-  Output: a string with component numbers 
---
**Explicit Requirements**
1. return must be a string
2. 
3.
---
**Implicit Requirements** (if needed)
1. each integer must be followed by a plus sign and then next integer
2. if a number in original integer is 0, doesn't need to be included in string
3.
---
Examples 
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 70304
  -  Output: '70000 + 300 + 4'
-  Example 2
  -  Inputs:
  -  Output:
---
Modelling/Scratch Pad
--------------------------------------------------
70304 % 10000

ten_thousands
thousands

70304 % 10

"#{thousands} +

[70000, 300, 4]

70304 iterate through the string 

leftovers 
modulus factor
modulus_zero_return

70304 % 10 4
70304 - 4
70300 % 100 0
70300 % 1000 3
70300 - 300
70000 % 10000
70000 % 100000

use digits? maybe reverse it and then multiply by a factor of 10

--------------------------------------------------
Data Structures
--------------

---
Algorithm
---------
separate integer out into separate digits, store in array
reverse array
iterate through the array
  at each index, transform the value by multiplying by 10 ** index
start an empty string
iterate through the array
  if there's nothing in the string, add the integer as a string to the string
  if there's already something in the string, add " + " and then the integer as a string to the string
  
=end

def expanded_form(int)
  digits = int.digits
  index = 0
  values = digits.map do |digit|
    return_value = digit * (10 ** index)
    index += 1
    return_value
  end
  reversed = values.reverse
  result = ""
  reversed.each do |integer|
    if result == ""
      result << integer.to_s
    elsif integer == 0
      next
    else
      result << " + " + integer.to_s
    end
  end
  result
end

p expanded_form(12) == '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) == '70000 + 300 + 4'
