# Write a method that takes an array of consecutive (increasing) letters as input and that returns the missing 
#letter in the array.
=begin
P
given an array missing a number, return the letter that is missing from the array
A
create an array with all of the letters in lowercase, assign this to `letters`
iterate through the given array
  find the index of the current character (lowercased) in the lowercase letters array
  compare the letter at the next index to the letter at that same index in the letters array
    if they aren't the same, return the letter in `letters` at the given array` (uppercase the letter if the current character
    is uppercased)
=end 

def determine_missing_letter(array)
  letters = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
  array.each_with_index do |char, array_index|
    letter_index = letters.index(char.downcase)
    if char == char.downcase 
      return letters[letter_index + 1] unless letters[letter_index + 1] == array[array_index + 1].downcase
    end
    if char == char.upcase 
      return letters[letter_index + 1].upcase unless letters[letter_index + 1] == array[array_index + 1].downcase
    end
  end
end

p determine_missing_letter(['a','b','c','d','f']) == 'e'
p determine_missing_letter(['O','Q','R','S']) == 'P'