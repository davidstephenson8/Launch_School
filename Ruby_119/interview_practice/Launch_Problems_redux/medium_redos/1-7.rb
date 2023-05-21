=begin
==============
Problem
if a string contains the string represenation of a number, replace it with the numeric equivalent
------------------------
-  Inputs: string
-  Output: modified string
---
** Rules **
Explicit
1. return same string with words changed to string numbers
2. 
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
  -  Inputs: I need a three zero three
  -  Output: I need a 3 0 3
-  Example 2
  -  Inputs: 
  -  Output: 
---
Modelling/Scratch Pad
--------------------------------------------------
hash {one: 1, two: 2....}

then iterate through split up words

if hash[word]
  word = hash[word]


--------------------------------------------------
Data Structures
--------------


---
Algorithm
---------
split given string into words in array, variable name `words`
create hash with keys as word representations of numbers, values as numerical string representations of numbers
iterate through words with index
  iterate through array of keys
    start counter variable at 0
    start a loop
      take a slice of the word of the size of the key starting at index counter 
      if it's equal to the key, change word at index from counter and size key.size to the value associated with that key
      if it's not, increment the counter
      break when counter is equal to the size of the word minus the size of the key
join words, return string
=end

def word_to_digit(string)
  numbers = {"one" => "1", "two" => "2", "three" => "3", "four" => "4", "five" => "5", "six" => "6", "seven" => "7", 
    "eight" => "8", "nine" => "9"}
  words = string.split
  words.each_with_index do |word, index|
    numbers.keys.each do |key|
      counter = 0
      loop do
        if key == word[counter, key.size]
          words[index][counter, key.size] = numbers[key]
          counter += 1
        else
          counter += 1
        end
        break if counter >= word.size - key.size
      end
    end
  end
  words.join(" ")
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
