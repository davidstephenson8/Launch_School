=begin
P
problem: given a string with lower and upper case letters, return a string sorted first by letter and then by character
E
D
A
generate an array with only the capital letters, assign it to `capitals``
create an empty string, assign it to `result`
iterate through capitals
  add character in capitals to result
  iterate through original string
    if a character is the same as the capital being iterated through, add it to result
return result
=end

def find_children(dancing_brigade)
  capitals = dancing_brigade.chars.select { |char| char == char.upcase}
  result = ''
  capitals.sort.each do |capital|
    result << capital
    dancing_brigade.chars.each do |lowercase|
      if lowercase == capital.downcase
        result << lowercase
      end
    end
  end
  result
end

p find_children("abBA") == "AaBb"
p find_children("AaaaaZazzz") == "AaaaaaZzzz"
p find_children("CbcBcbaA") == "AaBbbCcc"
p find_children("xXfuUuuF") == "FfUuuuXx"
p find_children("") == ""

# the codewars solution is kinda wild here. We do #sort_by and can sort within each individual group as we go
# dancing_brigade.chars.sort_by {|char| [char.downcase, char]}.join is the one liner that works here
