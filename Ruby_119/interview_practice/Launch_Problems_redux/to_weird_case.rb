=begin
==============
Problem
# Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same.
------------------------
-  Inputs: string
-  Output: string with 2nd character in every 3rd word converted to uppercase
---
**Explicit Requirements**
1. sequence of characters returned is the same
2. every 2nd character in every 3rd word is converted to uppercase
3. 
---
**Implicit Requirements** (if needed)
1. uppercase 2nd letters remain uppercase
2. if it's only a one letter word, no letters need to be capitalized
3.
---
Examples 
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: "aaA bB c"
  -  Output: "aaA bB c"
-  Example 2
  -  Inputs: 'Lorem Ipsum is simply dummy text of the printing'
  -  Output: "Lorem Ipsum iS simply dummy tExT of the pRiNtInG"
---
Scratch Pad/Working Area
--------------------------------------------------
split initial string into words
develop helper method weird case
  input is a string
  splits word into characters
  transforms the characters, making odd indicies capitalized
  joins characters, returning output of a weirdcased word
iterate through the words array
  run the weirdcase method on every word whose index + 1 is evenly divisible by 3, transforming word into weirdcase
join words array with transformed weirdcase words


--------------------------------------------------
Data Structures
--------------

---
Algorithm
---------

=end

def weirdcase(string)
  characters = string.chars
  result = ""
  characters.each_with_index do |char, index|
    if index.even?
      result << char
    else
      result << char.upcase
    end
  end
  result
end

p weirdcase("oeirtn hoertihneo rtihn")


def to_weird_case(string)
  words = string.split
  words.each_with_index do |word, index|
    if (index + 1) % 3 == 0
      words[index] = weirdcase(word)
    end
  end
  words.join(" ")
end

# Examples:

p to_weird_case('Lorem Ipsum is simply dummy text of the printing') == 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case('It is a long established fact that a reader will be distracted') =='It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case(
  'Miss Mary Poppins word is supercalifragilisticexpialidocious') == 'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'

# The tests above should print "true".