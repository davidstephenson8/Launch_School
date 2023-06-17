def substrings(string)
  results = []
  chars = string.chars
  chars.each_with_index do |char, index|
    chars.each_with_index do |char2, index2|
      results << [char, char2] if index2 > index
    end
  end
  results
end

p substrings("string")
p substrings("another string")
p substrings("this is a really big string, I wonder how we'll do")
p substrings("z")
p substrings("")