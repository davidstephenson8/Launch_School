=begin
==============
Problem
The vowel substrings in the word codewarriors are o,e,a,io. The longest of these has a length of 2.
Given a lowercase string that has alphabetic characters only (both vowels and consonants) and no spaces, 
return the length of the longest vowel substring. Vowels are any of aeiou

------------------------
-  Inputs: string
-  Output: length of longest substring of vowels
---
**Explicit Requirements**
1. dealing with strings only in lowercase, no spaces
2. return an integer
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
  -  Inputs: "codewarriors"
  -  Output: "io"
-  Example 2
  -  Inputs: "chrononhotonthuooaos"
  -  Output: 5
---
Scratch Pad/Working Area
--------------------------------------------------
I'll generate an array with each of the vowel strings

if I use regex [aeiou]+ with scan it should pull just the vowel strings into an array
then I can transform each string into their size and return the minumum value
["aeiou", "ae", "ai", "aaii"] => [5, 2, 2, 4] => 2
--------------------------------------------------
Data Structures
--------------

---
Algorithm
---------
move through string, pushing any string of vowels one or longer to an array
transform the values in the array to the size of each substring
return lowest size
=end

def solve(s)
 s.scan(/[aeiou]+/).map(&:size).max
end

p solve("chrononhotonthuooaos")