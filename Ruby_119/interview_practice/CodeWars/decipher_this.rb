=begin
==============
Problem: 
given a string, decipher it to be the secret message. Secret message has second and first letters switched, and first letter
is translated from ordinal to letter. 
------------------------
-  Inputs: string
-  Output: secret message
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
  -  Inputs: "72olle"
  -  Output: "Hello"
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
sepearate original string into separate words, assign to variable `words`
initialize empty array `numbers
initialize empty array to `clean_words`
separate numbers from letters for each word
  iterate through the characters of each string, selecting only the characters that are alphabetic
    add characters to string based on index in clean_words. 
      if clean_words doesn't have an element at a given index, assign it to the current character
      if it does, add current character to element at current index
  iterate through `words`
    iterate through the characters in the string, adding any numeric characters to a string in `numbers` dictated
    by the current index.
      if current index doesn't have a value, initialize `numbers` to current character
      if the current index currently has a string, add current character to that string
switch the positions of the characters in each word in `clean_words`
iterate through `numbers`
assign output to `first_letters`
        iterate through the full range of letters from a to z lowercase and uppercase
        transform the number if the letter in the range's ordinal is the same as the number converted to an integer
iterate through `first_letters` with index
  unshift the element in at current `clean_words` with numbers`
join `clean_words` and return the result
---
=end

LETTERS = ("A".."Z").to_a + ("a".."z").to_a

def decipher_this(string)
  words = string.split
  numbers = []
  clean_words = []
  first_letters = []
  words.each_with_index do |word, index|
    word.chars.each do |char|
      if char.match(/[a-zA-Z]/)
        if clean_words[index]
          clean_words[index] << char
        else
          clean_words[index] = char
        end
      end
      if char.match(/[^a-zA-Z]/)
        if numbers[index]
          numbers[index] << char
        else
          numbers[index] = char
        end
      end
    end
  end
  clean_words.each do |word|
    unless word == nil || word.size == 1
      word[0], word[-1] = word[-1], word[0]
    end
  end
  numbers.each do |number|
    LETTERS.each do |letter|
      first_letters << letter if number.to_i == letter.ord
    end
  end
  first_letters.each_with_index do |letter, index|
    next if clean_words[index] == nil
    first_letters[index] = letter + clean_words[index]
  end
  first_letters.join(" ")
end

p decipher_this("65 119esi 111dl 111lw 108dvei 105n 97n 111ka") == "A wise old owl lived in an oak"
p decipher_this("84eh 109ero 104e 115wa 116eh 108sse 104e 115eokp") == "The more he saw the less he spoke"
p decipher_this("84eh 108sse 104e 115eokp 116eh 109ero 104e 104dare") == "The less he spoke the more he heard"
p decipher_this("87yh 99na 119e 110to 97ll 98e 108eki 116tah 119esi 111dl 98dri") == "Why can we not all be like that wise old bird"
p decipher_this("84kanh 121uo 80roti 102ro 97ll 121ruo 104ple") == "Thank you Piotr for all your help"
