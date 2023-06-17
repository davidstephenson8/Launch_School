=begin
==============
Problem

write a function that takes an integer and returns a string that breaks that integer down into an expanded form.
Expanded form returns each place in the integer as a 10, 100 or 1000 and connects these elements with a plus sign

------------------------
-  Inputs: integer
-  Output: string
---
** Rules **
Explicit
1. 
2. 
3. 

Implicit
1. 
2.
3.


---
Examples 
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 
  -  Output: 
-  Example 2
  -  Inputs: 
  -  Output: 
---
Modelling/Scratch Pad
--------------------------------------------------

9017 => [7, 1, 0, 9] => [7 * 10^0, 1 * 10^1...] => string (join(" + ")) 

--------------------------------------------------
Data Structures
--------------

array
---
Algorithm
---------
take the number and split it into an array of each digit within the number
transform that array into an array with each number expanded to the correct place (1, 10, 100, etc)
  multiply each number by 10 raised to the power of its index to accomplish this 
reject any element in the array that's zero
join the remaining elements in the array with " + "
=end

def expanded_form(int)
  digits = int.digits
  expanded = digits.map.with_index do |digit, index|
    digit * 10 ** index
  end
  expanded.reject! do |num|
    num == 0
  end
  expanded = expanded.reverse
  expanded.join(" + ")
end
p expanded_form(12) == '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) == '70000 + 300 + 4'
