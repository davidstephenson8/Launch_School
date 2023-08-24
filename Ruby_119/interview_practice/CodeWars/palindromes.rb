=begin
P
return the size of the largest palindrome substring from a given string as an integer
A
create all possible substrings for the given string
  assign `substrings` to an empty array
  iterate through the characters of the string, taking note of index
    iterate through the characters of the string again, taking note of index
      push the given string from index1 to index2 if index1 is less than or equal to index2
select only the palindromes from these substrings
  select strings that are the same as their reversed value
return the size of the largest palindrome 
  return the largest palindrome, calculate the size of that palindrome
=end

def longest_palindrome(string)
  substrings = []
  string.chars.each_with_index do |char, index1|
    string.chars.each_with_index do |char2, index2|
      substrings << string[index1..index2] if index1 <= index2
    end
  end
  palindromes = substrings.select do |substring|
    substring == substring.reverse
  end
  p palindromes.max_by{|palindrome| palindrome.size}.size
end

p longest_palindrome("a") == 1
p longest_palindrome("aa") == 2
p longest_palindrome("baa") == 2
p longest_palindrome("aab") == 2
p longest_palindrome("baabcd") == 4
p longest_palindrome("baablkj12345432133d") == 9