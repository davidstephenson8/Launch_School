def leading_substrings(string)
  letters = string.chars
  substrings = []
  letters.each_index do |index|
    substrings << string[0, index + 1]
  end
  p substrings
end


p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']