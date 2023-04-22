# Write a method that takes one argument: an array of integers.
# The method should return the minimum sum of 5 consecutive
# numbers in the array. If the array contains fewer than 5
# elements, the method should return nil.

# Examples:
=begin
P 
input: array
output: integer (sum of 5 consecutive values in array)
explicit rules
fewer than 5 elements returns nil
return lowest sum of 5 consecutive values in array
implicit
return can be positive or negative
E

D
arrays
A
initialize value of minimum sum to the first slice of 5 in array
if the array size is less than 5, return nil
iterate through the array
  add current value and 4 following values together to get sum
  compare current sum to minimum sum
  if current sum is less than minimum sum reassign miminum sum to current sum
after iteration is complete return minimum sum
C
=end

def minimum_sum(array)
  return nil if array.size < 5
  min_sum = array[0..4].sum 
  (0..array.size - 5).each do |starting_index|
    current_consecutive_numbers = array[starting_index...starting_index + 5]
    current_sum = current_consecutive_numbers.sum
    if current_sum < min_sum
      min_sum = current_sum
    end 
  end
  min_sum
end

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

# The tests above should print "true".