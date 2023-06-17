=begin
==============
Problem

Given a string of integers, return the number of odd-numbered substrings that can be formed.
For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.

------------------------
-  Inputs: string
-  Output: number of odd-numbered substrings
---
** Rules **
Explicit
1. return the number of odd substrings
2. 
3. 

Implicit
1. the entire string can be a substring
2. repeated numbers count for each appearance of the number in the given string
3. numbers must be contiguous, combining numbers doesn't count


---
Examples 
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 1231
  -  Output: 7 (1, 123, 1231, 23, 231, 31, 1)
-  Example 2
  -  Inputs: 134721
  -  Output: 13 (1, 13, 1345, 134721, 3, 347, 34721, 47, 4721, 7, 721, 21, 1)
---
Modelling/Scratch Pad
--------------------------------------------------

--------------------------------------------------
Data Structures
--------------


---
Algorithm
---------
create each possible substring
  create empty array, assign it to `substrings`
  create an array of characters, assign it to characters
  iterate through `characters`
    start a second iteration over the letters in the array, starting at the number from the first iteration
      add substrings from the given string from the index from the first iteration to the index of the second iteration
filter out the substrings that are odd, set this equal to `odds``
  convert each substring to an integer
  filter out the substrings that are even
return the count of substrings filtered to `odds`
=end

p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28