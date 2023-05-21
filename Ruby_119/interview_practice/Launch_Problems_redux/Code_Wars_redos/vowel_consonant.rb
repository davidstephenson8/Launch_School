=begin
==============
Problem
If we alternate the vowels and consonants in the string "have", we get the following list, arranged alphabetically:
 ['ahev', 'aveh', 'ehav', 'evah', 'have', 'heva', 'vahe', 'veha']. These are the only 
 possibilities in which vowels and consonants are alternated. The first element, ahev, is alphabetically lowest.
------------------------
-  Inputs: string
-  Output: first substring alphabetically
---
**Explicit Requirements**
1. return "failed" if number of vowels and number of consonants are not equal
2. return is a string 
3. return must alternate between vowels and consonants
4. if vowels and consonants are equal, first letter in string must be vowel
---
**Implicit Requirements** (if needed)
1. lexographically means alphabetically
2.
3.
---
Examples 
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: "java"
  -  Output: "ajav"
-  Example 2
  -  Inputs: "acidity"
  -  Output: "caditiy"
---
Scratch Pad/Working Area
--------------------------------------------------
helper method to detect if vowel/consonant alternation is happening
["a", "c", "i", "d", "i", "t", "y"]
if first character == /[aeiou]+/
  vowel_check is true
  consonant_check is false
if not, 
  vowel_check is false
  consonant_check is true
then iterate through the string
if vowel_check 
  if character isn't vowel, return false
  if it is consonant_check = true, vowel_check = false
elsif consonant_check
  if character isn't vowel, return false
  if it is consonant_check = false, vowel_check = true
return true if all of the checks happen
if this returns true, add to results string
how to generate each possible permutation of the string combination


a => a
ab => ab, ba
abc => abc, acb, bac, bca, cab, cba
abcd => abcd, abdc, acbd, acdb, adcb, adbc, bacd, badc, bdac, bdca, bcad, bcda, cabd, cadb, cbad, cbda, cdab, cdba, 
dabc, dacb, dbac, dbca, dcab, dcba

ok, so my plan is to shuffle the array of consonants and add it to a giant array of all possible permutations. I'll stop adding
things to this large array when it's equal to the factorial of the size of the string. 

sort array of appropriate substrings
return first value
--------------------------------------------------
Data Structures
--------------

---
Algorithm
---------

=end

def alternate?(string)
  characters = string.chars
  if characters[0].match(/[aeiou]+/)
    vowel_check = true
    consonant_check = false
  else
    vowel_check = false
    consonant_check = true
  end
  characters.each do |char| 
    if vowel_check
      return false if char.match(/[^aeiou]+/)
      vowel_check = false
      consonant_check = true
    elsif consonant_check

      return false if char.match(/[aeiou]+/)
      vowel_check = true
      consonant_check = false
    end
  end
  true
end

def factorial(int)
  return 1 if int == 1
  int * factorial(int - 1)
end

factorial(5)

def solve s
  all_permutations = []
  unique_characters = s.chars.uniq
  characters = s.chars
  i = 0
  loop do
    all_permutations << characters.shuffle
    i += 1
    break if i == 100000
  end
  all_permutations = all_permutations.uniq
  alternating = all_permutations.select do |subarray|
    alternate?(subarray.join)
  end
  sorted_strings = alternating.sort.map(&:join)
  result = ""
  sorted_strings.each do |substring|
    if substring.size.even? && substring[0].match(/^aeiou/)
      next
    else
      result = substring
      break
    end
  end
  result
end

p solve("abc")
p solve("java")