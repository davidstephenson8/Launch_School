words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

def anagrams(word_array)
  word_chars = word_array.map do |word|
    word.chars
  end

  word_chars.each do |word|  
    words = [word.join]
    word_chars.each do |comparison|
      comparison
      word
      words << comparison.join if word.all?{|letter| comparison.any?(letter)} 
    end
    p words.uniq if words.size > 1
  end
end

anagrams(words)