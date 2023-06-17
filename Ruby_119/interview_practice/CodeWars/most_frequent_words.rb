=begin
Write a function that, given a string of text (possibly with punctuation and line-breaks), returns an array of the top-3 most occurring words, in descending order of the number of occurrences.

Assumptions:
A word is a string of letters (A to Z) optionally containing one or more apostrophes (') in ASCII.
 (No need to handle fancy punctuation.)

Matches should be case-insensitive, and the words in the result should be lowercased.
Ties may be broken arbitrarily.
If a text contains fewer than three unique words, then either the top-2 or top-1 words should be returned, or an empty array if a text contains no words.
Examples:
top_3_words("In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.")
# => ["a", "of", "on"]

top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e")
# => ["e", "ddd", "aa"]

top_3_words("  //wont won't won't")
# => ["won't", "wont"]
Bonus points (not really, but just for fun):
Avoid creating an array whose memory footprint is roughly as big as the input text.
Avoid sorting the entire array of unique words.
=end

=begin
==============
Problem
given a string of words, return an array of the top 3 highest occuring words

------------------------
-  Inputs: string
-  Output: array of words
---
** Rules **
Explicit
1. words in array should be downcase
2. 0, 1 and 2 element arrays return the array
3. words are substrings that start or end with a letter

Implicit
1. try to avoid creating an array as big as the original 
2. don't sort the whole array of unique words
3.


---
Examples 
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 
  -  Output: 
-  Example 2
  -  Inputs: 
  -  Output: 
---
Modelling/Scratch Pad
--------------------------------------------------



--------------------------------------------------
Data Structures
--------------
arrays

---
Algorithm
---------
split string into substrings as sepearated by spaces
filter out non-word substrings
  if a word contains characters that are not word characters, return only the part of the word
    that contains word characters
iterate through an array of word unique word substrings, adding them to a results array if their count in the
original array is higher than the lowest count of any of the objects in the array
  the results array should contain two element arrays with the word and the number of times the word appears in the overall 
  string
sort the array by word count 
remove the element with the lowest count
return results array
=end


def top_3_words(string)
  words = string.downcase.split
  real_words = []
  words.each do |word|
    characters = word.chars
    characters.each_with_index do |char1, index1|
      index = 1
      next if char1.match(/[^a-z]/)
      characters[0..-1].each do |char2|
        if characters[-index].match(/[a-z]/)
          real_words << characters[index1..(-index)].join
          break
        else
          index += 1
        end
      end
      break
    end
  end
  real_words
  result = []
  return real_words if real_words.size < 3
  real_words.uniq.each do |word|
    if result.size < 3
      result << [word, real_words.count(word)]
      result = result.sort_by{ |array| array[1]}.reverse
    elsif result[2][1] < real_words.count(word)
      result << [word, real_words.count(word)]
      result = result.sort_by{ |array| array[1]}.reverse
      result.pop
    end
  end
  result.map do |array|
    array[0]
  end
end

p top_3_words("a a a  b  c c  d d d d  e e e e e") #== ["e", "d", "a"]
p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e") == ["e", "ddd", "aa"]
p top_3_words("  //wont won't won't ") #== ["won't", "wont"]
p top_3_words("  , e   .. ") == ["e"]
p top_3_words("  ...  ") == []
p top_3_words("  '  ") == []
p top_3_words("  '''  ") == []
p top_3_words("""In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.""") == ["a", "of", "on"]
