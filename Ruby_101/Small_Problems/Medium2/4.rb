=begin
P return true if there are matched pairs of parenthesis
E
D
A
C  
=end

def balanced?(string)
  characters = string.chars
  matched_right_parenthesis_indicies = []
  if characters.count("(") != characters.count(")")
    return false
  else
    characters.each_with_index do |char, index|
      characters.each_with_index do |char2, index2|
        if char == "(" && char2 == ")"
          if index < index2
            if matched_right_parenthesis_indicies.any?(index)
              next
            else
              matched_right_parenthesis_indicies.push(index)
            end
          end
        end
      end
    end
  end
  matched_right_parenthesis_indicies.count == characters.count(")")                            
end

p balanced?("Thi()s (is) a swagg(t)? swag")
p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false