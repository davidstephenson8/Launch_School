def convert(string)
  result = ""
  return string.dup unless block_given?
  string.chars.each do |char|
    result << yield(char)
  end
  result
end

e = convert('A simple string') { |char| char.upcase } # => "A SIMPLE STRING"
f = convert('xyyz') { |char| char + char }            # => xxyyyyzz
g = convert('Ready? Set. Go!') do |char|              # => Ready?Set.Go!
  char == ' ' ? '' : char
end

puts e
puts f
puts g

a = "string"

b = convert(a)

a.upcase!

puts a
puts b