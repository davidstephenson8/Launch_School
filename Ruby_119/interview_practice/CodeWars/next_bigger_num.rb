# You have to create a method that takes a positive integer number
# and returns the next bigger number formed by the same digits.

=begin
P
return the next biggest number that can be created from the given digits. If no greater number is possible, return -1
E
D
A
convert number to a string, initialize `string` to this value
return -1 if the chars in the original number are sorted in descending order, the number has a single digit or if all of the 
digits in the number are the same
  to check descending order, split number into digits, sort them, reverse them, join them, convert that to an integer and compare
  that to the original number. If they're the same return -1
  if the array of uniq characters is 1, return -1
create an empty numbers array
  if the last 
=end

def next_bigger_num(number)
  number.to_s.chars
end

p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798