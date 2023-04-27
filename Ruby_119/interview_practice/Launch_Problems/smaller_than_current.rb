=begin
P 
how many numbers in a given array are smaller than the current number
input - array
output - array with count of numbers smaller than current number
explicit rules
each number should only be counted once when considering count of numbers smaller than current number
return should be an array
implicit rules
return will be same size as original array
if number is the same as others return zero
E
[6, 5, 4, 8]
[2, 1, 0, 3]
D
array
A
iterate through array 
compare current number to array with all other unique numbers
  return count of numbers smaller than current number
return array with counts
C
=end

def smaller_numbers_than_current(array)
  unique_numbers = array.uniq
  array.map do |num|
    unique_numbers.count do |comparison|
      num > comparison
    end 
  end
end

p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]
