=begin
==============
Problem

Return a string where:

the first and last characters remain in original place for each word
characters between the first and last characters must be sorted alphabetically
punctuation should remain at the same place as it started, for example: shan't -> sahn't
Assumptions

words are seperated by single spaces
only spaces separate words, special characters do not, for example: tik-tak -> tai-ktk
special characters do not take the position of the non special characters, for example: -dcba -> -dbca
for this kata puctuation is limited to 4 characters: hyphen(-), apostrophe('), comma(,) and period(.) 
ignore capitalisation
------------------------
-  Inputs: a string
-  Output: a string where all words have the same punctuation and first and last letters, but all of the other letters
in each word are sorted alphabetically
---
** Rules **
Explicit
1. first and last letters remain the same for each word
2. other characters sorted alphabetically
3. punctuation in the same place

Implicit
1. spaces separate words
2. special characters aren't considered in rotations, so words. is sorted to wdors., the period isn't included
3. punctiation is -,. and '
4. needs to handle sentences, not just one word


---
Examples 
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: i
  -  Output: i
-  Example 2
  -  Inputs: -dcba
  -  Output: -dbca
---
Modelling/Scratch Pad
--------------------------------------------------

youbr => [y, o, u, b, r] => [o, u, b] => [b, o, u] => [y, o, u, b, r] => youbr

you're => [y, o, u, ', r, e] => [o, u, ', r] => [o, u, r] => [o, r, u] => [o, r, ', u] => [y, o, r, ', u, e] => yor'ue

this. => [t, h, i, s] => [h, i] => [h, i] => [t, h, i, s] => [t, h, i, s, .] => this. 

i => [i] 

--------------------------------------------------
Data Structures
--------------


---
Algorithm
---------
develop scrambler method given a word
  if a word has puncutation before or after it, remove it and store it in a beginning or ending variable
  if a word is less than 4 characters, don't modify it
  initialize a puncuation array
  take the inner characters of the word and put them in a separate array, inners
  check to see if any of the characters within the words are punctuation
    if they are add the punctuation and it's index as a 2 element array to the
      punctuation array
    delete the punctuation from the inners array at the given indicies
  sort the remaining inner characters
  add back the punctuation at their respective indicies
  join the inner characters
  concatenate first letter of the word, inner characters, and last letter of the word
  add back punctuation as needed
apply scrambler method to each word in a string
return string with each word scrambled

=end

def scrambler(word)
  beginning = ""
  ending = ""
  punctuation = []
  if word[0].match(/['.,-]/)
    beginning = word[0]
    word = word[1..-1]
  elsif word[-1].match(/['.,-]/)
    ending = word[-1]
    word = word[0..-2]
  end
  return beginning + word + ending if word.size < 4
  inners = word[1...-1].chars
  inners.each_with_index do |char, index|
    if char.match(/['.,-]/)
      punctuation << [char, index]
    end
  end
  punctuation.each do |subarray|
    inners.delete_at(subarray[1])
  end
  inners.sort!
  punctuation.each do |subarray|
    inners.insert(subarray[1], subarray[0])
  end
  inners
  word = word[0] + inners.join + word[-1]
  beginning + word + ending
end

def scramble_words(words)
  #your code here
end

p scrambler("-dcba")
p scrambler("-cat")
p scrambler("cat")
p scrambler("thisissomeswag")
p scrambler("thisis'someswag")
