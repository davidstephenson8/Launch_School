# Write a method that takes one argument: an array of integers.
# The method should return the minimum sum of 5 consecutive
# numbers in the array. If the array contains fewer than 5
# elements, the method should return nil.

=begin
P
write a method that reutrn the mimumum sum of 5 consecutive numbers in an array
rules
1. if the array has fewer than 5 elements, return nil
2. numbers should be consecutive for sum
3.
E
123456

D
array
A
if the size of the array is less than 5, return nil
initialize `subarrays` to an empty array
iterate through given array, taking note of index
  break when index is size of the array - 4
  otherwise, pass the array from current index to index plus 5 to `subarrays`
assign `sum` to transofmation of `subarrays`
  return sum of each subarray to method
return the minimum sum
=end

def minimum_sum(array)
  return nil if array.size < 5
  subarrays = []
  array.each_with_index do |num, index|
    break if index >= array.size - 4
    subarrays << array[index..index + 4]
  end
  sums = subarrays.map do |subarray|
    subarray.inject(:+)
  end
  sums.min
end

# Examples:

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

# The tests above should print "true".