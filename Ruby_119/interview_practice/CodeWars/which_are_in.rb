=begin
==============
Problem: 
return an array of words out of a first array that are contained in the words in a second array 
------------------------
-  Inputs: arrays
-  Output: array
---
Explicit Rules
1.
2.
3.

Implicit Rules
1.
2.
3.

Examples:
-  Example 1
  -  Inputs:
  -  Output:
-  Example 2
  -  Inputs:
  -  Output:
---
---
Data Structure
--------------

---
Algorithm
---------
write a method to generate each possible substring from a given string
  iterate through the string
    for each iteration, add each substring, starting with current character and moving to the end of the string
assign `result` to select words in array 1
    assign `contain_word` to a transformation of array 2
      generate each substring for each string in array 2
        if array of substrings contains current array1 element, true
        else false
    if any element in contain_word is true, true
return array1 sorted
---
=end

def substring_generator(string)
  substrings = []
  string.chars.each_with_index do |char, index|
    string.chars.each_with_index do |char2, index2|
      substrings << string[index..index2] if index2 >= index
    end
  end
  substrings
end

def in_array(array1, array2)
  result = array1.select do |word|
    contain_word = array2.map do |word2|
      word2_substrings = substring_generator(word2)
      word2_substrings.include?(word)
    end
    contain_word.any?(true)
  end
  result
end

p in_array(["arp", "live", "strong"], ["lively", "alive", "harp", "sharp", "armstrong"])
p in_array(["tarp", "mice", "bull"], ["lively", "alive", "harp", "sharp", "armstrong"])



