=begin
Given two words, how many letters do you have to remove from them to make them anagrams?
  Example
  First word : c od e w ar s (4 letters removed)
  Second word : ha c k er r a nk (6 letters removed)
  Result : 10
  Hints
  A word is an anagram of another word if they have the same letters (usually in a different order).
  Do not worry about case. All inputs will be lowercase.
  algorithm
  split both strings into arrays of their characters, initialize chars1 and chars2 to these arrays
  iterate through chars1
    if chars1 has a character not in chars2, delete that character
    if chars1 has a character that has a different count than that character in chars2, delete that character and then add
      the number of that character that chars2 has back into chars1
  iterate through chars2
    if chars2 has a character not in chars1, delete that character
  join chars1 and chars2
  subtract chars1 size from word1 and chars2 size from word2
  sum these differences
  return the sum
=end

# def anagram_difference(word1, word2)
#   chars1 = word1.chars
#   chars2 = word2.chars
#   chars1.each do |char|
#     if chars2.count(char) == 0
#       word1.delete!(char)
#     end
#     if chars1.count(char) > chars2.count(char)
#       word1.delete!(char)%
#       chars2.count(char).times do
#         word1 << char
#       end
#     end
#   end
#   chars2.each do |char|
#     if chars1.count(char) == 0
#       word2.delete!(char)
#     end
#     if chars2.count(char) > chars1.count(char)
#       word2.delete!(char)
#       chars1.count(char).times do
#         word2 << char
#       end
#     end
#   end
#   word1_diff = chars1.size - word1.size
#   word2_diff = chars2.size - word2.size
#   word1_diff + word2_diff
# end

def anagram_difference(w1, w2)
  #..
end

p anagram_difference('', '') == 0
p anagram_difference('a', '') == 1
p anagram_difference('', 'a') == 1
p anagram_difference('ab', 'a') == 1
p anagram_difference('ab', 'ba') == 0
p anagram_difference('ab', 'cd') == 4
p anagram_difference('aab', 'a') == 2
p anagram_difference('a', 'aab') == 2
p anagram_difference('codewars', 'hackerrank') == 10
