# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

# You may assume that each input would have exactly one solution, and you may not use the same element twice.

# You can return the answer in any order.

=begin
P
given an array of integers, return the indices of the two numbers that sum to a given integer
E
given 0, array [2, 11, 7, 15]
returns [0, 2]
D
A
iterate through the given array, taking not of index
  iterate through the second array, taking note of index
    if the two numbers sum to the given integer, return an array of index1 and index2
=end

def two_sum(array, target)
  array.each_with_index do |num1, index1|
    array.each_with_index do |num2, index2|
      next if index1 == index2
      if num1 + num2 == target
        return [index1, index2]
      end
    end
  end
end

p two_sum([2, 11, 7, 15], 9) == [0, 2]
p two_sum([3, 2, 4], 6) == [1, 2]
p two_sum([3, 3], 6) == [0, 1]
 