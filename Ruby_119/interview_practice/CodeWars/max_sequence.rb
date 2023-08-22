# Find the maximum sum of a contiguous subsequence in an array of integers

=begin
P
find the maximum sum of a set of contiguous numbers in an array of integers. Return 0 if the maximum sum is 0 or less
or if the original array is empty
E
D
A
if the original array is empty, return 0
create all possible subarrays from the original array
create an empty array, initialize `subarray` to this value
iterate through the original array, taking note of index
  iterate through the original array again, taking note of index
    add a subarray from the first index to the second index if the second index is greater than or equal to the first index
map all of the subarrays to their sums, assign it to `sums`
assign the maximum value from the `sums` array to `max
if max is less than or equal to zero, return 0
if not, return max`
=end

def max_sequence(array)
  return 0 if array.empty?
  subarrays = []
  array.each_with_index do |num1, index1|
    array.each_with_index do |num2, index2|
      subarrays << array[index1..index2] if index2 >= index1
    end
  end
  sums = subarrays.map do |subarray|
    subarray.inject(:+)
  end
  max = sums.max
  if max <= 0
    return 0
  else
    return max
  end
end

p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12