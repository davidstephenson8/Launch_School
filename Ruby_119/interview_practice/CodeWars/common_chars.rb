# Given an array of strings made only from lowercase letters,
# return an array of all characters that show up in all strings within the given array (including duplicates).
# For example, if a character occurs 3 times in all strings but not 4 times, you need to include that character
# three times in the final answer.
=begin
P
given an array of strings, return an array of characters that show up in all of the strings. If a character appears in all
of the strings 3 times, and a few 4, the character needs to be returned that many times
E
[o]
A
create an empty array, initialize `results` to this array
iterate through the characters of the first string in the given array
  initialize counts to an array of the count of the given character in each string
add the character the number of times that it appears in the string that it appears the least
return `results`
=end
def common_chars(array)
  results = []
  array[0].chars.uniq.each_with_index do |char, index|
    counts = array.map do |word|
      word.count(char)
    end
    counts.min.times do
      results << char
    end
  end
  results
end

p common_chars(["bella", "label", "roller"]) == ["e", "l", "l"]
p common_chars(["cool", "lock", "cook"]) == ["c", "o"]
p common_chars(["hello", "goodbye", "booya", "random"]) == ["o"]
p common_chars(["aabbaaaa", "ccdddddd", "eeffee", "ggrrrrr", "yyyzzz"]) == []
 