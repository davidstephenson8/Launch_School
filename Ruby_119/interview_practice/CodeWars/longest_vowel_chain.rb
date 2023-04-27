def solve(s)
  characters = s.chars
  characters.map! do |char|
    if ["a", "e", "i", "o", "u"].include?(char)
      char
    else
      " "
    end
  end
  vowel_strings = characters.join.split
  vowel_strings.map! do |string|
    string.count
  end
  vowel_strings.max
end

p solve("codewarriors")