# Have the method letter_changes(str) take the str parameter being passed and modify it using the following algorithm:
# Replace every letter in the string with the 3rd letter following it in the alphabet (ie. c becomes f, Z becomes C).
# Then return this modified string.

=begin
P
convert a string of letters into the letter that follows them 3 later in the alphabet. Capital letters remain capitalized, 
spaces and other special characters remain unchanged
E
EMAILZ@gmail.com
HPDLOC@jpdlo.frp
D
A
make a hash of all of the letters 3 after each other in the alphabet
  initialize `partner` to an empty hash
  move through the range of characters a-w and assign them to charachers d-z. Assign x-z to a-c. 
  move through the range of characters A-W and assign them to charachers D-Z. Assign X-Z to A-C. 
convert string into a series of characters, stor in `characters`
iterate through this string of characters, transforming each character
  if the character is not alpha, return that character
  if the character is alphabetic, change it to the letter 3 after it in the alphabet, based on what's in the `partner` hash`
join the string of characters and return it
=end

def letter_changes(string)
  partner = {}
  ("a".."w").each_with_index do |char, index|
    partner[char] = ("d".."z").to_a[index]
  end
  ("A".."W").each_with_index do |char, index|
    partner[char] = ("D".."Z").to_a[index]
  end
  ("x".."z").each_with_index do |char, index|
    partner[char] = ("a".."c").to_a[index]
  end
  ("X".."Z").each_with_index do |char, index|
    partner[char] = ("A".."C").to_a[index]
  end
  characters = string.chars
  characters.map! do |char|
    if partner[char]
      partner[char]
    else
      char
    end
  end
  characters.join
end


p letter_changes("this long cake@&") == "wklv orqj fdnh@&"
p letter_changes("Road trip9") == "Urdg wuls9"
p letter_changes("EMAILZ@gmail.com") == "HPDLOC@jpdlo.frp"
p letter_changes('xyz') == ('abc')