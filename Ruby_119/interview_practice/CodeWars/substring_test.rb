=begin
write a method that returns true if two strings share 1 or more substrings
a substring is a string of length 2 or more. 
case doesn't matter
E
something home
true (ome)
BANANA
banana
true
D

A
make each string all lowercase letters
make all possible substrings for each string
create an empty array, initialize substrings1 to this array
create an empty array, initialize substrings2 to this array
iterate through each character in the given string, taking note of index
  iterate through each character in the given string again, taking note if index
    if index1 is less than index2, push string[index1..index2] to substrings1
repeat the substring process, instead pushing to substrings2
iterate through substrings1
  return true if any elements of substrings2 are the same as the current element in substrings1
if the iteration completes and no elements are equivalent between the two substring arrays return false
=end

def substring_test(string1, string2)
  string1 = string1.downcase
  string2 = string2.downcase
  substrings1 = []
  substrings2 = []
  string1.chars.each_with_index do |char, index1|
    string1.chars.each_with_index do |char, index2|
      substrings1 << string1[index1..index2] if index1 < index2
    end
  end
  string2.chars.each_with_index do |char, index1|
    string2.chars.each_with_index do |char, index2|
      substrings2 << string2[index1..index2] if index1 < index2
    end
  end
  substrings1.each do |substring|
    return true if substrings2.any?(substring)
  end
  false
end

p substring_test('Something', 'Home') == true
p substring_test('Something', 'Fun') == false
p substring_test('Something', '') == false
p substring_test('', 'Something') == false
p substring_test('BANANA', 'banana') == true
p substring_test('test', 'lllt') == false
p substring_test('', '') == false
p substring_test('1234567', '541265') == true
p substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou') == true
p substring_test("this is a test", "abcdefghjk") == false