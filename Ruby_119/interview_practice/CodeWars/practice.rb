=begin
  remove all of the vowels from a string and output a string with all of the vowels in the order they appear
  in in the string and then return the vowel that appears the most in the string.
  A
  iterate through the characters in a string, if an array with aeiou contains the character, select it
  set this equal to vowels. 
  set vowel_characters to the characters in vowels
  max vowel_characters by the count of the given character
=end

def characters(string)
  vowels = string.chars.select do |char|
    if ["a", "e", "i", "o", "u"].include?(char)
      char
    end
  end
  p vowels.join
  vowels.max_by{ |char| vowels.count(char)}
end

p characters("rs;oins ae;roi ae;ori sr;otib srt;b srtij aeil;u arevji aerv")
p characters("by the count of the given character")
p characters("ve all of the vowels from a string and output a string with all of the vowels")