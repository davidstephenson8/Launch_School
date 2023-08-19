=begin
P
E
D
A
separate the string into characters
iterate through an array of unique characters, adding the number of each character to hash with a key as symbol of character
=end

def letter_count(string)
  hash = {}
  characters = string.chars
  characters.uniq.each do |char|
    hash[char.to_sym] = characters.count(char)
  end
  hash
end

p letter_count('arithmetics') ==  {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}