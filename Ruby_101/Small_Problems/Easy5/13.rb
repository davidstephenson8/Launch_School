ALPHABET_AND_SPACE = ('A'..'Z').to_a + ('a'..'z').to_a + [" "]

def word_sizes(string)
  counts = Hash.new(0)
  characters = string.chars
  clean_characters = characters.map! do |char|
    if ALPHABET_AND_SPACE.include?(char)
      char
    else
      nil
    end
  end

  words = clean_characters.join.split
  words.each do |word|
    counts[word.size] += 1
  end
  counts
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}