=begin
==============
Problem: 
make a method the counts the number of substrings that are potatoes
------------------------
-  Inputs: string
-  Output: count of potatoes
---
Rules
1. return number of potatoes
2. 
3. 

Examples:
-  Example 1
  -  Inputs: potatoapple
  -  Output: 1
-  Example 2
  -  Inputs: potatopotatopotat
  -  Output: 2
---
Data Structures/High Level Algo
--------------
create all substrings from string
return the count of potato
---
Algorithm
---------
create all substrings from string
  initialize `substrings` to an empty array
  iterate through the characters in the string taking note of index
    interate through the characters in the string again, taking note of index again
      if the second index is larger than or equal to the first index, add the string from the first index to the second index
        to `substrings`
  return the count of the string "potato" in substrings
---
=end




def potatoes(string)
  substrings = []
  string.chars.each_with_index do |char, index1|
    string.chars.each_with_index do |char, index2|
      substrings << string[index1..index2] if index2 >= index1
    end
  end
  substrings.count("potato")
end