def repeater(string)
  
characters = string.chars
double_characters = []

characters.each do |char|
  double_characters << char + char
end

double_characters.join
end


p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''