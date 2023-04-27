=begin
P -
input: string and a substring
output: the number of times the substring appears in the string
E - 
D - 
string
array
integer
Scratchpad
I'm thinking that I'll need to just check character by character. Character by character doesn't quite work, though, because some substrings are larger
than 1 character. I could compare a slice at the index equal to the size of the substring. I think that'd work. 
A -
initialize search_text_count variable to zero
initialize an index variable to zero
start a loop that runs until the index variable is equal to the string size
  check to see if a slice of the string starting at the current index and continuing for the array size is equal to substring.
  If it is, increment search_text_count by 1
  increment the index by 1 at the end of each loop.
  once you've iterated through the whole array, return the search_text_count
C -
=end
def solution(string, substring)
  search_text_count = 0
  index = 0
  until index == string.size
    if string[index, substring.size] == substring
      search_text_count += 1
    end
    index += 1 
  end
  search_text_count
end

p solution("abcdeb", "b") == 2
p solution("abcdeb", "a") == 1
p solution("abbc", "bb") == 1