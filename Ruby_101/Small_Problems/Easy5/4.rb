def swap(string)
  words = string.split
reverse = words.map do |word|
            word = word.chars
            first_letter = word.shift
            last_letter = word.pop
            word << first_letter
            word.prepend(last_letter)
            word.join
          end
  p reverse.join(" ")
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'