=begin
==============
Problem: 
find the hamming distance, or the number of differences between two stings
------------------------
-  Inputs: two strings
-  Output: integer
---
Rules
1. strings are the same length
2. if there are no differences return 0
3. (uppercase v lowercase?)

Examples:
-  Example 1
  -  Inputs: "abcde", "bcdef"
  -  Output: 5
-  Example 2
  -  Inputs: "strong", "strung"
  -  Output: 1
---
High Level Algo
--------------
variable (counter)
characters, comparing to other string
increment counter if different
return counter
---
Algorithm
---------
initialize variable `counter` to 0
iterate through characters in string1, taking note of index
  if character in string1 is not the same as character in string2 at the same index increment counter
end
return `counter`
---
=end

def hamming_distance(str1, str2)
	counter = 0
  str1.chars.each_with_index do |char, index|
    counter += 1 if str2[index] != char
  end
  counter
end

p  hamming_distance("abcdef", "abcddf")
p  hamming_distance("abcdef", "abcdef")
p  hamming_distance("strange", "stronge")
