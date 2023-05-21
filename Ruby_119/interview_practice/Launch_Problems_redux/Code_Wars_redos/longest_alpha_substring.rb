# Find the longest substring in alphabetical order.
# Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is "aaaabbbbctt".
# The input will only consist of lowercase characters and will be at least one letter long.
# If there are multiple solutions, return the one that appears first.

=begin
==============
Problem
find longest substring in alphabetical order
------------------------
-  Inputs: string
-  Output: longest alphabetical substring
---
**Explicit Requirements**
1. return longest alphabetical substring
2. single characters are returned by themselves
3.if multiple strings are the same size, return first longest string
---
**Implicit Requirements** (if needed)
1. strings will have lowercase characters
2.
3.
---
Examples 
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 'abcdeapbcdef'
  -  Output: 'abcde'
-  Example 2
  -  Inputs:
  -  Output:
---
Modelling/Scratch Pad
--------------------------------------------------
so 

["a", "b", "c", "d", "e", "a", "p", "b", "c", "d", "e", "f"]
  x    -1   -1   -1   -1   0
        x   -1   -1   -1   0
                           x   -1     
"a" <=> "b"
so if we return negative 1, move to the next one
if we return something else, add the string from this index to a results array

iterate through results array, return one that has longest size, maybe with #max_by method

--------------------------------------------------
Data Structures
--------------
arrays
---
Algorithm
---------
generate each possible substring from string, store in array
  iterate through the array
    start a second iteration with the rest of the array
      add the string from first index to second index to an array of substrings
select only the strings that are the same as a set of sorted, alphabetical strings.
return the largest string from that group
=end

def longest(string)
  substrings = []
  characters = string.chars
  characters.each_with_index do |char1, index1|
    characters[index1..-1].each_with_index do |char2, index2|
      substrings << characters[index1..-1][0..index2].join
    end
  end
  alphabetical = substrings.select do |substring|
    substring == substring.chars.sort.join
  end
  alphabetical.max_by{|string| string.size}
end


p longest('asd') == 'as'
p longest('nab') == 'ab'
p longest('abcdeapbcdef') ==  'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') == 'fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'