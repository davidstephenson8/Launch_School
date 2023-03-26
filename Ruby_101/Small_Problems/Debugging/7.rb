def neutralize(sentence)
  words = sentence.split(' ')
  happy_words = []
  words.each do |word|
    if negative?(word)
      next
    else happy_words << word
    end
  end
  happy_words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.