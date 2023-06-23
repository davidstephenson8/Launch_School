VALUES = ("a".."z").to_a.map.with_index { |char, index| [char, index + 1] }.to_h

def alphabet_position(text)
  clean_text = text.downcase.chars.select do |char|
    char.match(/[a-zA-Z]/)
  end
  character_values = clean_text.map do |char|
    VALUES[char]
  end
  character_values.join(" ")
end

p alphabet_position("The sunset sets at twelve o' clock.") == "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"
p alphabet_position("-.-'") == ""
