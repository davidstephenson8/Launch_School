# Write a method that takes a string as an argument and returns
# the character that occurs least often in the given string.
# If there are multiple characters with the equal lowest number
# of occurrences, then return the one that appears first in the
# string. When counting characters, consider the uppercase and
# lowercase version to be the same.

# Examples:
=begin
P
input - string
output - character
explicit rules
uppercase and lowercase characters are the same
return the character that appears first if there are multiple lowest number occurances
implicit rules
return a lowercase character
spaces are characters, and can be returned
E
p least_common_char("Peter Piper picked a peck of pickled peppers") #== "t"
"t" returned even though a also appears once
D
i: string
w: arrays, hash?
o: character
A
initialize lowest_index to 0
change string to all lowercase characters
split string into array of characters, store in characters variable
iterate through characters, transforming them to the count of each character
iterate through count array
  for each value, compare current value to minimum value
    if value is lower, set lowest_index to current_index

return value for lowest_index
C
=end

def least_common_char(string)
  lowest_index = 0
  string.downcase!
  characters = string.chars
  character_count = characters.map do |char|
    characters.count(char)
  end
  character_count.each_with_index do |count, index|
    if count < character_count[lowest_index]
      lowest_index = index
    end
  end
  string[lowest_index]
end

p least_common_char("Hello World") == "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"
p least_common_char("Mississippi") == "m"
p least_common_char("Happy birthday!") == ' '
p least_common_char("aaaaaAAAA") == 'a'

# The tests above should print "true".