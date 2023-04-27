=begin
P 
i - two strings, once that we're testing to see if it can be rearranged to match str2
o - a boolean
E
cedewaraaossoqqyt, codewars
katas, steak
D 
i - string
w - array
o - boolean
A 
convert both strings to set of characters
interate through the second string
  the count of current character in second string is less than or equal to the count of the current character in the first string
  return false if this condition isn't met
if we iterate through the whole second string and false isn't returned, we'll return true
=end
def scramble(string1, string2)
  characters1 = string1.chars
  characters2 = string2.chars
  characters2.each do |char2|
    characters1.map! do |char1|
      if char1 == char2
        " "
        next
      end
  end
  true
end

p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false