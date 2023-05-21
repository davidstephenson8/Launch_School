=begin

Write a method that takes a string, and then returns a hash that contains 3 entries: one represents 
the percentage of characters in the string that are lowercase letters, one the percentage of characters 
that are uppercase letters, and one the percentage of characters that are neither.
==============
Problem

take a string and return a hash with percentages of uppercase, lowercase and neither characters
------------------------
-  Inputs: string
-  Output: hash with percentages of uppercase, lowercase and neither characters
---
** Rules **
Explicit
1. string will have one character
2. hash format is {lowercase: ##.#, uppercase: ##.#, neither: ##.#}
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
  -  Inputs: 'abCdef 123'
  -  Output: {lowercase: 50.0, uppercase: 10.0, neither: 40.0}
-  Example 2
  -  Inputs: 'AbCd +Ef'
  -  Output: {lowercase: 37.5, uppercase: 37.5, neither: 25.0}
---
Modelling/Scratch Pad
--------------------------------------------------
maybe chars, compare each char to a set of lowercase, uppercase characters? 

add uppercase and lowercase characters to strings and then divide the sizes of each string into total string size
to get percentage values 


--------------------------------------------------
Data Structures
--------------

hash, array
---
Algorithm
---------
convert string into an array of characters stored in `characters`
initialize hash `percentages` with keys of lowercase: uppercase: and neither: all with values of 0.0
initialize `lowercase`, `uppercase` and `neither` variables to empty strings
iterate through characters
  compare character to range of lowercase characters
    if range contains character, add to lowercase string
  compare character to range of uppercase characters
    if range contains character add to uppercase string
  or else just add character to neither string
assign values to lowercase, uppercase and neither respectively
  value of hash for each corresponding key will be size of string divided by total string size multiplied by 100
  
=end


def letter_percentages(string)
  characters = string.chars
  percentages = {lowercase: 0.0, uppercase: 0.0, neither: 0.0}
  lowercase = ""
  uppercase = ""
  neither = ""
  characters.each do |char|
    if ("a".."z").include?(char)
      lowercase << char 
    elsif ("A".."Z").include?(char)
      uppercase << char
    else
      neither << char    
    end
  end
  percentages[:lowercase] = lowercase.size.to_f/string.size.to_f * 100
  percentages[:uppercase] = uppercase.size.to_f/string.size.to_f * 100
  percentages[:neither] = neither.size.to_f/string.size.to_f * 100
  percentages
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }