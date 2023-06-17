=begin
  problem: given a string an an array, return the words in the array that are an anagram
  examples:
  word:'abba'
  array: %w[aabb, abcd, bbaa, dada]
  output %w[aabb, bbaa]
  algorithm
  make a method that determines if a word is an anagram of another word or not
  take two words as input
    generate an array of characters from the first word, initialize `chars1` to this array
        generate an array of characters from the second word, initialize `chars2` to this array
    iterate through chars1
      for each character, check to see if chars2 has the same count of this letter
         return false if the counts of any character are not the same
         return true if all characters are checked and they all have the same count
  filter words array using `anagrams` method. Only words that are anagrams are selected. Assign filtered array to `result`
  return result  
=end

def anagram?(word1, word2)
  chars1 = word1.chars
  chars2 = word2.chars
  chars1.each do |char|
    return false if chars1.count(char) != chars2.count(char) || word1.size != word2.size
  end
  true
end

p anagram?("aabb", "abab")
p anagram?("aabb", "abcd")

def anagrams(word, words)
  result = words.select do |comparison|
    anagram?(word, comparison)
  end
  result
end

p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) == ['aabb', 'bbaa']
p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) == ['carer', 'racer']
p anagrams('laser', ['lazing', 'lazy',  'lacer']) == []
