=begin
Take a word and list of possible anagrams and select the sublist of words that contains anagrams of the word.

This method should return an empty array if none of the possible anagrams are matches, 
Rules
1. An anagram contains exactly the same number of letters as the original string, and no additional letters
2. An identical word is not an anagram
3. anagrams should be case insensitive

A
MAIN ALGO
create a class with a match method that returns only the anagrams that match the rules above
the class should save the string passed to it in initialization

the match method should iterate through an array passed to it, selecting strings that match the needed criteria
  the string in the element should be all lowercase
  if the comparison string is the same as the anagram string, move to the next element
  if the comparison string is a different size from the anagram string, move to the next element
  use helper method to check if the anagram string has the same count of each character as the comparison string
    if they're the same, select comparison string to be added to return
  

HELPER ALGO
takes two arguments, the anagram string and a comparison string
make a string with just the unique characters in the anagram string, assign to uniques
iterate through each the unique characters, checking to see what the count is in the anagram string
      if count of any character is different, return false
otherwise return true
=end

class Anagram
  def initialize(string)
    @string = string
  end

  def match(array)
    array.select do |comparison| 
      next if comparison.downcase == @string || comparison.downcase.size != @string.size
      counts(@string.downcase, comparison.downcase)
    end
  end

  def counts(anagram, comparison)
    uniques = anagram.chars.uniq
    uniques.each do |char|
      unless anagram.count(char) == comparison.count(char)
        return false
      end
    end
    true
  end
end

detector = Anagram.new('ant')
p detector.match %w(tan stand at)