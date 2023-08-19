=begin
6 kyu
Assume "#" is like a backspace in string. This means that string "a#bc#d" actually is "bd"

Your task is to process a string with "#" symbols.

Examples
"abc#d##c"      ==>  "ac"
"abc##d######"  ==>  ""
"#######"       ==>  ""
""              ==>  ""
P
if a string has a # delete the character before that string 
E
D
A
turn string into an array of characters assigned to `characters`
iterate through the array
if a "#" is found, substitute the # and the nearest previous character that isn't a space with a space
  to find character that isn't space, call delete_index
  replace character at delete_index with a space
create a helper method delete_index to look for the correct character to delete
  helper method will be passed the array before the #
    create an index equal to the size of the array passed to the method minus one
    start a loop
      check to see if current element is an alphanumberic
      if it is, return index
      if not, decrement index
  helper method will return the index of character to delete
join characters, return the output
C
=end

def delete_index(array)
  index = array.size - 1
  loop do
    if array[index] == nil
      return nil
    elsif array[index] != " "
      return index
    else
      index -= 1
    end
    break if index < 0
  end
end

def clean_string(string)
  characters = string.chars
  characters.each_with_index do |char, index|
    if char == "#" 
      characters[index] = " "
      other_index = delete_index(characters[0...index])
      next if other_index == nil
      characters[other_index] = " "
    end
  end
  characters.delete(" ")
  characters.join
end

p clean_string('abc#d##c') == "ac"
p clean_string('abc####d##c#') == ""
