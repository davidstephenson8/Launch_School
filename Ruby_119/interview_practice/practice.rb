# Write a method that takes a string as an argument and returns
# the character that occurs least often in the given string.
# If there are multiple characters with the equal lowest number
# of occurrences, then return the one that appears first in the
# string. When counting characters, consider the uppercase and
# lowercase version to be the same.

# Examples:

=begin
P
return the character that appears the second least number of times in a string
rules
1. if two numbers appear the same number of times, return the one that appears first 
2. uppercase and lowercase letters are considered the same
3. not just alphanumerics, space can be returned

E
"Hello World"
"h"
D
string -> characters (array) -> element out of array
A
assign `downcase_string` to the original string with all letters converted to lowercase
convert `downcase_string` to just the unique characters, initialize to `chars`
  return array with the character and the count associated with that character
sort the array by the count associated with each character
return second element of the second subarray in counts
=end

def least_common_char(string)
  p string.downcase.chars.unique = chars
end

p least_common_char("Hello World") #== "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") #== "t"
p least_common_char("Mississippi") #== "m"
p least_common_char("Happy birthday!") #== ' '
p least_common_char("aaaaaAAAA") #== 'a'

# The tests above should print "true".