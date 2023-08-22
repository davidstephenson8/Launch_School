# Given a non-empty string check if it can be constructed by taking a substring of it
# and appending multiple copies of the substring together. You may assume the given string consists of
# lowercase English letters only.

=begin
P
see if you can take substrings and multiply repeat them to generate the original string. Lowercase letters only.
Return a boolean``
E
"abab"
yes
"aba"
no
"aabaaba"
no
D
A
generate all possible substrings from given string
select the substrings that are half the size of the given string
iterate through these substrings
  if a substring repeated the a number of times that's the same as the size of the string divided by the 
    size of the substring is the same as the given string return true
    if not move to the next substring
  if all of the substrings are iterated through and none hash returned true, return false
=end

def repeated_substring_pattern(string)
  substrings = []
  string.chars.each_with_index do |char, index1|
    string.chars.each_with_index do |char2, index2|
      next if index1 > index2
      substrings << string[index1..index2]
    end
  end
  substrings.select! do |substring|
    substring.size <= string.size / 2
  end
  substrings.each do |substring|
    repeated_string = substring * (string.size / substring.size)
    if repeated_string == string
      return true
    end
  end
  false
end

p repeated_substring_pattern("abab") == true
p repeated_substring_pattern("aba") == false
p repeated_substring_pattern("aabaaba") == false
p repeated_substring_pattern("abaababaab") == true
p repeated_substring_pattern("abcabcabcabc") == true