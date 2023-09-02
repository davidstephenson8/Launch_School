# Given an array of numbers, for each number find out how many numbers
# in the array are smaller than it. When counting numbers, only count
# unique values. That is, if a given number occurs multiple times in
# the array, it should only be counted once.

=begin
P
Given an array, return an array with the count of how many unique values are smaller than it. 
E
[8, 1, 2, 2, 3]
[3, 0, 1, 1, 2]
D
A
create an array of unique values from given array, initialize `uniques` to this value
transform the original array, assign to counts
  return count of integers in `uniques` that are less than the current number
return `counts`
=end

def smaller_numbers_than_current(array)
  uniques = array.uniq
  counts = array.map do |num|
    uniques.count{ |comparison| num > comparison }
  end
  counts
end

# Examples:

p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]

# The tests above should print "true".