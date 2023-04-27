=begin
Given a string of integers, return the number of odd-numbered substrings that can be formed.

For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.

solve("1341") = 7. See test cases for more examples.

Good luck!
P
i - string of integers
o - number of odd numbered substings that can be formed
explicit rules
return total number of odd numbered strings
E
1357
1 13 135 1357 3 35 357 5 57 7
D 
i - string
w - array
o integer
A - 
generating all possible substrings
  initialize empty array for results
  start with current index initialized to 0
  start a loop
  initialize second index to current index plus one
  start a loop
    take slice of string from current index through second index (non-inclusive)
      add slice to an array
    break if second index == array.size
    increment second_index
  end loop
  increment current index by one
  break loop if current index is equal to array.size - 1
  result array
end

get substrings from method
count how many substrings are odd when converted to integers
return that integer
=end

def substrings(string)
  results = []
  (0..string.size - 1).each do |initial_char|
    (initial_char..string.size-1).each do |last_char|
      results << string[initial_char..last_char]
    end
  end
  results
end

def solve(string_integer)
  substrings = substrings(string_integer)
  substrings.count{ |substring| substring.to_i.odd? }
end

p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28