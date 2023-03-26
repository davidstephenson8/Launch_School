statement = "The Flintstones Rock"

count = {}
letters = statement.chars

letters.each do |letter|
  if count[letter].nil?
    count[letter] = 1
  else
    count[letter] += 1
  end
end

p count