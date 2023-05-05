=begin
==============
Problem
Complete the solution so that it returns the number of times the search_text is found within the full_text.

Usage example:
------------------------
-  Inputs: string, substring 
-  Output: number of times substring occurs in string
---
**Explicit Requirements**
1. output must be a number
2. 
3.
---
**Implicit Requirements** (if needed)
1. "bbb" returns 2, so letters can be counted more than once
2.
3.
---
Examples 
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: "aa_bb_cc_bb_dd", "bb"
  -  Output: 2
-  Example 2
  -  Inputs: "abbc", "bb"
  -  Output: 1
---
Scratch Pad/Working Area
--------------------------------------------------
ok, so I think I can iterate through an array of characters 

["a", "b", "b", "c"]

and then compare the substring to joined slices so

["a", "b", "b", "c"][0, 2].join == substring
then move to the next index
["a", "b", "b", "c"][1, 2].join == substring
through the whole array. 

I'll have to set up a counter so every time that statement returns true we add one to it



--------------------------------------------------
Data Structures
--------------

---
Algorithm
---------
initialize a `counter` variable to 0
convert string into array of characters
iterate through the array of characters
  compare the input substring to a slice of the characters array the same size as the substring starting at the current
  index
    if the input substring is the same, increment the counter variable
=end

def solution(full_text, search_text)
  counter = 0
  characters = full_text.chars
  characters.each_with_index do |char, index|
    counter += 1 if characters[index, search_text.size].join == search_text
  end
  counter
end

p solution("abbc", "bb")
p solution("aa_bb_cc_bb_dd", "bb")