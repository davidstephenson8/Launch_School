=begin
P
return the missing character if given an array of characters
E

D

A
generate an array with all of the characters of the alphabet
get a slice of the alphabet from the index of the first character in the given array one more than the size of the given array
find the difference between the slice and the given array
return that character
=end

ALPHABET = ("a".."z").to_a

def list(names)
  downcase = names.map(&:downcase)
  comparison = ALPHABET[ALPHABET.index(names[0].downcase)..(ALPHABET.index(names[0].downcase) + names.size)]
  p comparison
  p names
  return (comparison - downcase)[0].upcase if names[0] == names[0].upcase
  (comparison - names)[0]
end

p list(['a','b','c','d','f']) #== 'e' 
p list(['O','Q','R','S']) #== 'P'
p list(["a","b","c","d","f"]) #== "e"
p list(["O","Q","R","S"]) #== "P"
