
=begin
==============
Problem: 
# Given a word, compute the Scrabble score for that word
# A, E, I, O, U, L, N, R, S, T = 1
# D, G = 2
# B, C, M, P = 3
# F, H, V, W, Y = 4
# K = 5
# J, X = 8
# Q, Z = 10
------------------------
-  Inputs: string
-  Output: integer (scrabble score of string)
---
Rules
1. uppercase and lowercase do not matter
2. 
3. 

Examples:
-  Example 1
  -  Inputs: "zebra"
             10 + 1 + 3 + 1 + 1 
  -  Output: 16
-  Example 2
  -  Inputs:
  -  Output:
---
---
Data Structure/Modelling
--------------

---
Algorithm
---------
make a hash with characters as keys and scores as values

iterate through a upcase version of the characters in string
transform each character based on the value assigned to it in the hash
sum transformed array
---
=end

def scrabble_score(string)
  scores = {}
  %w(A E I O U L N R S T).each do |character|
    scores[character] = 1
  end
  %w(D G).each do |character|
    scores[character] = 2
  end
  %w(B C M P).each do |character|
    scores[character] = 3
  end
  %w(F H V W Y).each do |character|
    scores[character] = 4
  end
  %w(K).each do |character|
    scores[character] = 5
  end
  %w(J X).each do |character|
    scores[character] = 8
  end
  %w(Q Z).each do |character|
    scores[character] = 10
  end
  characters = string.upcase.chars
  letter_scores = characters.map do |char|
    scores[char]
  end
  letter_scores.sum
end


p scrabble_score('a') == 1
p scrabble_score('cabbage') == 14
p scrabble_score('Cabbage') == 14
p scrabble_score('zebra') == 16