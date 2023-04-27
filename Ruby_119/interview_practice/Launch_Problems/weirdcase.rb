# Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same.
=begin
input: string
output: string with every thirds word in weird case
explicit rules: every third word is in weird case
  weird case is every second character is converted to an uppercase character
implicit rules: 
  original cases should be maintained
E
p to_weird_case(
  'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
  'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS
D
string
array
string
A
split string up into different words
initialize word value to 1 
iterate through array
  modify word to weirdcase if word number is evenly divisible by 3
  weird case subprocess
    convert the string into characters
    initialize character value
    if character value is even convert to uppercase
    rejoin characters
  increment word value
rejoin and return words as one string
=end
def weirdcase(string)
  characters = string.chars
  character_value = 1 
  weird_cased_word = characters.map do |char|
    if character_value.even?
      char = char.upcase
    end
    character_value += 1
    char
  end
  weird_cased_word.join
end 

def to_weird_case(string)
  words = string.split
  word_value = 1 
  weird_case_words = words.map do |word|
    if word_value % 3 == 0
      word = weirdcase(word)
    end
    word_value += 1
    word
  end
  weird_case_words.join(" ")
end

# Examples:

p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
                'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case(
  'It is a long established fact that a reader will be distracted') ==
  'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case(
  'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
  'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'

#The tests above should print "true".