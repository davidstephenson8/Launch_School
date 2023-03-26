def substrings(string)
  substring_array = []
  letters = string.chars
  letters.each do |letter|
    letters.each_index do |index|
      substring_array << string[letters.index(letter), (string.size - index)]
    end
  end
  substring_array.uniq.sort
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]