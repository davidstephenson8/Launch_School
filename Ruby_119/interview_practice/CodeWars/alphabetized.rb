=begin
P
create a string in case-insensitive order of appearance alphabetical order from a given string. ignore spaces
E
""
""
" "
""
" a"
"a"
D

A
create an array for the entire alphabet, inisialize to constant ALPHABET
create an empty string and assign it to result
iterate through alphabet
  iterate through the string (taking note of index)
    if the character in given string matches character in alphabet
      add current character from string to `result`
      replace character at current index with a space
once iteration through alphabet is complete, return `result`
=end
ALPHABET = ("a".."z").to_a

def alphabetized(s)
  result = ""
  ALPHABET.each do |letter|
    s.chars.each do |char|
      if letter == char.downcase
        result << char
      end
    end
  end
  return result
end

p alphabetized("") #== ""
p alphabetized(" ") #== ""
p alphabetized(" a") == "a"
p alphabetized("a ") == "a"
p alphabetized(" a ") == "a"
p alphabetized("A b B a") #== "AabB"
p alphabetized(" a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z") #== "aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ"
