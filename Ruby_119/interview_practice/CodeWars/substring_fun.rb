=begin
==============
Problem
Complete the function that takes an array of words.

You must concatenate the nth letter from each word to construct 
a new word which should be returned as a string, where n is the position of the word in the list.

------------------------
-  Inputs: array of strings
-  Output: string
---
** Rules **
Explicit
1. the string returned is formed from each of the strings in the original array
2. the letter pulled from each string is the same as the string's index in the original array
3. 

Implicit
1. an empty array should return an empty string
2.
3.


---
Examples 
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: ['yoda', 'best', 'has']
  -  Output: 'yes'
-  Example 2
  -  Inputs: 
  -  Output: 
---
Modelling/Scratch Pad
--------------------------------------------------



--------------------------------------------------
Data Structures
--------------

arrays, string
---
Algorithm
---------
initialize result string
iterate through the given array
  add the character at the same index that the subarray occupies in the given array to result string
=end

def nth_char(array)
  result = ''
  array.each_with_index do |string, index|
    result << string[index]
  end
  result
end

p nth_char(['yoda', 'best', 'has']) == 'yes'
p nth_char([]) == ''
p nth_char(['X-ray']) == 'X'
p nth_char(['No','No']) == 'No'
p nth_char(['Chad','Morocco','India','Algeria','Botswana','Bahamas','Ecuador','Micronesia']) == 'Codewars'


