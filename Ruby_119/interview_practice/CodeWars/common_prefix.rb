=begin
P
return the common prefix from a series of strings given as elements in an array. 
If no letters are in common pass return an empty string
E
dog racecar car
""
interspecies, interstella, interstate => inters
A
iterate through the characters in the first string in the array, taking note of the index
  initialize prefix to an empty string
  iterate through the elements of the array
    check to see if the character at the current index is the same for current iteration
      if character is not the same, return `prefix`
    if iteration completes, add current character to prefix
  if iteration completes, return prefix
=end

def common_prefix(strings)
  prefix = ""
  strings[0].chars.each_with_index do |char, index|
    strings.each do |string|
      return prefix if string[index] != char
    end
    prefix << char
  end
  prefix
end

p common_prefix(["flower", "flow", "flight"]) == "fl"
p common_prefix(["dog", "racecar", "car"]) == ""
p common_prefix(["interspecies", "interstellar", "interstate"]) == "inters"
p common_prefix(["throne", "dungeon"]) == ""
p common_prefix(["throne", "throne"]) == "throne"