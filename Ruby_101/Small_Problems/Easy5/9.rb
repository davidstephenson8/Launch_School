def crunch(string)
  i = 0
  clean_letters = "" 
  last_char = ""
  
  characters = string.chars
  characters.each do |char|
    if char != last_char
      last_char = char
      clean_letters << char
      i += 1
    elsif char == last_char
      i += 1
    end 
  end
  clean_letters
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''