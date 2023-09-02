# Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same.

=begin
P
write a method that accepts a string, and returns the same sequence of characters with every second character
in every third word converted to uppercase. Other characters should remain the same.
rules
1. weirdcase means that a word alternates between lower and uppercase, starting with lowercase
2. every third word in a given string should be weirdcase
3. if a character is already upcase, to convert to weirdcase, character should not be modified to downcase.
(weirdcase only modifies downcase letters, not upcase letters)
E
aaA bB c

D
string --> array
A
HELPER ALGO
`weirdcase`
given string
initialize `chars` to the characters in string
  assign `result` to the transform of `chars`, taking note of index
    if the index of a character is odd, modify that character to be uppercase
    if not, return the character
join result
return `result`
MAIN ALGO
split given string into words, assign to words
assign `weirdcased` to the result of a transformation of `words`, taking note of index
      if the index of the word + 1 is evenly divisible by 3, `weirdcase` the word
join and return weirdcased
=end

# Examples:

def weirdcase(string)
  chars = string.chars
  result = chars.map.with_index do |char, index|
    if index.odd?
      char.upcase
    else
      char
    end
  end
  result.join
end

# p weirdcase("adrensrtohinsrtohin")
# p weirdcase("David Stephenson")
# p weirdcase("this is a test, this is only a test")

def to_weird_case(string)
  words = string.split
  weirdcased = words.map.with_index do |word, index|
   if (index + 1) % 3 == 0
    weirdcase(word) 
   else
    word
   end
  end
  weirdcased.join(" ")
end

p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
                'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case(
  'It is a long established fact that a reader will be distracted') ==
  'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case(
  'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
  'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'

# The tests above should print "true".