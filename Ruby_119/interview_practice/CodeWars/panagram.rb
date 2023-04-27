=begin
A pangram is a sentence that contains every single letter of the alphabet at least once. For example, the sentence 
"The quick brown fox jumps over the lazy dog" is a pangram, because it uses the letters A-Z at least once (case is irrelevant).

Given a string, detect whether or not it is a pangram. Return True if it is, False if not. Ignore numbers and punctuation.
P
input - string
output - boolean
explicit rules
- return true if the string contains each letter of the alphabet at least once
- case doesn't matter
- ignore non-alphanumeric characters
implicit rules
- 
E
each letter from the alphabet needs to occur once
D
I think that I could use a hash here. And then tally the hash t
A
delete any non-alphanumeric characters
convert the remaining characters to downcase
create a hash with all of the other characters and the count of each one (only characters that are currently in the string get a spot)
if size is 26 return true, if size is less than 26 return false
C
=end

def pangram?(string)
  letters = string.downcase.delete('^a-z')
  hash = letters.chars.tally
  hash.size == 26 ? true : false
end

p pangram?("the quick brown fox jumps over the lazy dog1235123512351235")
p pangram?("This is not a pangram")