CONSONANTS = %W(B C D F G H J K L M N P Q R S T V W X Y Z b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  result = ""
  string.each_char do |char|
    if CONSONANTS.any?{|vowel| char == vowel }
      result << char + char
    else
      result << char 
    end
  end
  p result
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""