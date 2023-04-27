=begin
In this kata, you've to count lowercase letters in a given string and return the letter count in a hash with 'letter' 
as key and count as 'value'. The key must be 'symbol' instead of string in Ruby and 'char' instead of string in Crystal.

P
input - string
output - hash with letter as key, count as value
explicit rules
 - keys must be symbols corresponding to string character
 - value matches with count of character
E
D
i: string
w: hash, array
o: hash
A
initialize empty hash to store results in
break string into series of characters, store in `characters` variable
iterate through series of characters
  if character isn't contained in hash, initialize value to 1
  if character is contained in hash, increment value associated with character by one
return results hash
=end

def letter_count(str)
  results = {}
  characters = str.chars
  characters.each do |char|
    if results[char.to_sym] == nil
      results[char.to_sym] = 1
    else
      results[char.to_sym] += 1
    end
  end
  results
end

p letter_count("codewars") == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
p letter_count("activity") == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count("arithmetics") == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}