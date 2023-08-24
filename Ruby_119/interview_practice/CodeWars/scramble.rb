=begin
P
if any element of the first string can be rearranged to make the second string, return true
E
javass jjss
false
katas steak
false
D

A
initalzise unique characters in string2 to uniques
interate through uniques
  return false if the count of the character in string2 is greater than the count of that character in string1
return true if the iteration through uniques completes
=end

def scramble(string1, string2)
  uniques = string2.chars.uniq
  uniques.each do |char|
    return false if string1.count(char) < string2.count(char)
  end
  true
end

p scramble('javaass', 'jjss') == false
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true