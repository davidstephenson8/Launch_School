# Write a method that takes an integer year and returns the century
# return value must be a number that ends with st, nd, rd, or th appropriately

=begin
==============
Problem: 

------------------------
-  Inputs: integer
-  Output: string with th, nd, rd, etc as needed
---
Rules
1. string must be formatted appropriately
2. a century starts counting from year 1 to 99. This is considered the first century. The second century is from 100-199, etc
3. 

Examples:
-  Example 1
  -  Inputs: 24
  -  Output: "1st"
-  Example 2
  -  Inputs:
  -  Output:
---
---
Data Structure/Modelling
--------------
divide the integer by 100 and add one. Then use some logic to turn the integer into a string and add a suffix
---
Algorithm
---------
divide integer by 100, add 1, initialize `century_int` to this result after converting to a string
if century_int's last two digits are 11, 12 or 13 add concatenate century_int and 'th'
otherwise, if century int's last digit is one concatenate century_int and 'st'
if century int's last digit is 2 concatenate century_int and 'nd'
if century int's last digit is 3 concatenate century_int and 'rd'
otherwise, concatenate `century_int` and `th`
---
=end

def century(int)
  century_int = (int / 100 + 1).to_s
  if [11, 12, 13].include?(century_int[-2..-1].to_i)
    century_int + "th"
  elsif century_int[-1] == "1"
    century_int + "st"
  elsif century_int[-1] == "2"
    century_int + "nd"
  elsif century_int[-1] == "3"
    century_int + "rd"
  else
    century_int + "th"
  end
end

p century(24) == '1st'
p century(104) == '2nd'
p century(299) == '3rd'
p century(1078) == '11th'
p century(1123) == '12th'
p century(1244) == '13th'
p century(2092) == '21st'
p century(2134) == '22nd'