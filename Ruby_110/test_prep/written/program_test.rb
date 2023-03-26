def substring_generator(string)
  substrings = []
  string.chars.each_with_index do |char, index|
    length = 0
    loop do 
      length += 1
      substrings << string[index, length]
      break if length == string.size
    end
  end
  substrings
end

def is_alphabetical?(string)
  string.split("").sort.join == string
end

def longest(string)
  substrings = substring_generator(string)
  alphabetical_substrings = substrings.select do |substring|
    is_alphabetical?(substring)
  end
  largest_substring = ""
  alphabetical_substrings.each do |substring|
    if substring.size > largest_substring.size
      largest_substring = substring
    end
  end
  largest_substring
end

p longest('asd') == 'as'
p longest('nab') == 'ab'
p longest('abcdeapbcdef') ==  'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') == 'fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'