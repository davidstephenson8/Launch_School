# Given an array of n positive integers and a positive integer, find the minimal length of a 
#contiguous subarray for which the sum > a given number.
# If there isn't one, return 0 instead.

=begin
P 
given an array, give the smallest subarray size that sums to the given number
E
D
A
create an array with all possible subarrays
  iterate through the given array taking note of index
    iterate through the given array again, again taking note of index
      if the second index is the same or smaller than the first index, add the subarray from the first index to the second index
    
select the subarrays whose sums are greater than the given integer
        if the sum of the subarray is greater than the given integer return that integer
return the subarray that has the lowest size
          return the array with the minimum size
=end

def minSubLength(array, num)
  subarrays = []
  array.each_with_index do |num, index1|
    array.each_with_index do |num, index2|
      subarrays << array[index1..index2] if index2 >= index1
    end
  end
  correct_sums = subarrays.select! do |subarray|
    subarray.sum >= num
  end
  return 0 if correct_sums.empty?
  correct_sums.min_by {|array| array.size}.size
end

p minSubLength([2, 3, 1, 2, 4, 3], 7) == 2
p minSubLength([1, 10, 5, 2, 7], 9) == 1
p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
p minSubLength([1, 2, 4], 8) == 0