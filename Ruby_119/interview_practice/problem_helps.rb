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

p substrings("this is a string") #== substrings("this is a string").uniq
p substrings("supercalifragilisticexpialidocious") == substrings("supercalifragilisticexpialidocious")

#create all pairs

def pairs(array)
  pairs = []
  array.each_with_index do | ele1, index1 |
    array.each_with_index do | ele2, index2 |
      if index1 < index2
        pairs << [ele1, ele2]
      end
    end
  end
  pairs
end

p pairs([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
p pairs([2, 4, 6, 8, 10])

#create all possible permutations 



#create all 


