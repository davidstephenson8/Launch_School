# make substrings

def substrings(string)
  substrings = []
  characters = string.chars  
  characters.each_with_index do |start_char, start_index|
    characters.each_with_index do |end_char, end_index|
      if start_index <= end_index
        substrings << string[start_index..end_index]
      end
    end
  end
  substrings
end

p substrings("this is a string") == substrings("this is a string").uniq
p substrings("supercalifragilisticexpialidocious") == substrings("supercalifragilisticexpialidocious")

p substrings("this is a string").count("s")
p substrings("supercalifragilisticexpialidocious") == substrings("supercalifragilisticexpialidocious")


