def duplicate_count(text)
  text.downcase!
  test_characters = text.chars.uniq
  duplicates = []
  test_characters.each do |char|
    if text.count(char) > 1
      duplicates << char
    end
  end
  duplicates.size
end