=begin
P
make a hash with each letter in a given string as a key and the indicies that letter occurs as elements in 
an array in the value for that letter
A
initilize an empty hash to `result`
split the string into characters, initialize to `chars`
iterate through `chars` taking note of index
  initialize `result` at the symbol of character to an array with the index if it hasn't been initialized
  if it has been initialized, add current index to the value array
return `result`
=end

def map_letters(string)
  result = {}
  chars = string.chars
  chars.each_with_index do |char, index|
    if result[char.to_sym]
      result[char.to_sym] << index
    else
      result[char.to_sym] = [index]
    end
  end
  result
end

p map_letters("froggy") == { :f => [0], :r=>[1], :o=>[2], :g=>[3, 4], :y=>[5] }
p map_letters("dodo") == { :d=>[0, 2], :o=>[1, 3] }
p map_letters("grapes") == { :g=>[0], :r=>[1], :a=>[2], :p=>[3], :e=>[4], :s=>[5] }
 