=begin
==============
Problem
# RB PEDAC Study Session

Write a method that takes an array of consecutive letters as input and returns the missing letter.

# p determine_missing_letter(['a','b','c','d','f']) == 'E' 
# p determine_missing_letter(['o','q','r','s']) == 'P'
# p determine_missing_letter(['H','J','K','L']) == 'i'
# p determine_missing_letter([]) == []
------------------------
-  Inputs:
-  Output:
---
**Explicit Requirements**
1.
2.
3.
---
**Implicit Requirements** (if needed)
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




--------------------------------------------------
Data Structures
--------------

---
Algorithm
---------
High Level:
Create a reference array from the elements in the given arary, iterate through it, find the mismatch in the given array and then return the missing letter.

Low Level:
Check if the array is empty and return an empty array if so.
Create a range from the first and last letters in the array.
Convert that to an array.
iterate through given array
  compare value at given array with reference array
  if different, return value in reference array at given index swapcased

=end

def determine_missing_letter(array)
  return [] if array.empty? 
  reference = (array[0]..array[-1]).to_a
  array.each_with_index do |char, index|
    if char != reference[index]
      return reference[index].swapcase
    end
  end
end

p determine_missing_letter(['a','b','c','d','f']) == 'E' 
p determine_missing_letter(['o','q','r','s']) == 'P'
p determine_missing_letter(['H','J','K','L']) == 'i'
p determine_missing_letter([]) == []