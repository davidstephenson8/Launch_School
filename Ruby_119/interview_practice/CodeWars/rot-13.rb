=begin
P
take a string and return a ROT13 string, which has each letter shifted by 13 places.
RULES:
1. letters loop back, so r => e, z => m, etc
2. case should be preserved
E
grfg => test
D

A
create a hash that has the correct character stored as a value for each character used as a key
  iterate through an array from a to z, assign them to values from a range from n to z or 
  a to m respectively
  store this hash as hash1
iterate through the characters in the given string, transforming them to the corresponding
values in the hash.
  if the character is uppercase, pass it's corresponding lowercase character to the hash
  and return the value returned as uppercase
  Join these characters and store this result in `result`
return result
=end

def rot13(string)
  hash1 = {}
  ("a".."z").each_with_index do |char, index|
    if index < 13
      hash1[char] = ("n".."z").to_a[index] 
    else
      hash1[char] = ("a".."m").to_a[index - 13]
    end
  end
  p string.chars
  result = string.chars.map do |char|
    if ((("a".."z").to_a) + (("A".."Z").to_a)).include?(char) == false
      char
    elsif char == char.upcase
      hash1[char.downcase].upcase
    else
      hash1[char]
    end
  end
  result.join
end

p rot13("test")
p rot13("Ruby is cool!")