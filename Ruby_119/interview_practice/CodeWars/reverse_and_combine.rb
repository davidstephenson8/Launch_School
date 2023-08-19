=begin
Your task is to Reverse and Combine Words.

Input: String containing different "words" separated by spaces

1. More than one word? Reverse each word and combine first with second, third with fourth and so on...
  (odd number of words => last one stays alone, but has to be reversed too)
2. Start it again until there's only one word without spaces
3. Return your result…

P
E
D
A
split string into words, assign to words
return the string if it's only 1 word
start a loop until the size of words is 1
  reverse all of the words in words
  set new words equal to an empty array
  iterate through words
    if the size of words is odd, and the current words is the last word, add it to new_words
    otherwise, skip the word if the index is odd
    or add the word and the word after to new_words if their indexes are even
  reassign words to new_words
  return the only element in words once the loop completes
C
=end

def reverse_and_combine_text(string)
  words = string.split(" ")
  words.each_slice(2).to_a.map! {|words| words.join}
#   return string if words.size == 1
#   until words.size == 1
#     words.map!(&:reverse)
#     new_words = []
#     words.each_with_index do |word, index|
#       if index == words.size - 1 && words.size.odd?
#         new_words << words[index] 
#         break
#       end
#       next if index.odd?
#       new_words << words[index] + words[index + 1]
#     end
#     words = new_words
#   end
#   words[0]
end


p reverse_and_combine_text("abc def")# == "cbafed"
p reverse_and_combine_text("abc def ghi jkl")# == "defabcjklghi"
p reverse_and_combine_text("dfghrtcbafed")# == "dfghrtcbafed"
p reverse_and_combine_text("234hh54 53455 sdfqwzrt rtteetrt hjhjh lllll12  44") #== "trzwqfdstrteettr45hh4325543544hjhjh21lllll"
p reverse_and_combine_text("sdfsdf wee sdffg 342234 ftt") #== "gffds432243fdsfdseewttf"
