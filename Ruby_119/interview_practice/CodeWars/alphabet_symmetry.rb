=begin
==============
Problem

given an array of strings, return the an array where each string is replaced by
the number of letters that are in the same position in the string as they are in the alphabet
------------------------
-  Inputs: array of strings
-  Output: array of integers
---
** Rules **
Explicit
1. a number counts if it's in the same place in the string as it is in the alphabet
2. input is uppercase and lowercase
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
  -  Inputs: ["abode","ABc","xyzD"]
  -  Output: [4, 3, 1]
-  Example 2
  -  Inputs: 
  -  Output: 
---
Modelling/Scratch Pad
--------------------------------------------------

{"a" => 0, b: 1... z: 25}

abode
hash["a"] == 0

--------------------------------------------------
Data Structures
--------------


---
Algorithm
---------
create a string with all of the characters of the alphabet
iterate through the array
  index = 0
  counter = 0
  result = []
  start a loop
    if alphabet at index is the same as string at index, increment counter by one
    increment index
    break if index is the same as one less than string size
  end
  add counter to the result
return result
=end

def solve(array)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  result = []
  array.each do |string|
    index = 0
    counter = 0
    loop do
      if alphabet[index] == string[index].downcase
        counter += 1
      end
      index += 1
      break if index >= string.size
    end
    result << counter
  end
  result
end

p solve(["abode","ABc","xyzD"]) #== [4,3,1]
p solve(["abide","ABc","xyz"]) == [4,3,0]
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"]) == [6,5,7]
p solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]