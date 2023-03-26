def short_long_short(string1, string2)
  long_string = ''
  short_string = ''
  output = ''
  if string1.size > string2.size
    long_string = string1
    short_string = string2
  else
    long_string = string2
    short_string = string1
  end 
output << short_string 
  output << long_string
  output << short_string
  p output
 
end

short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"