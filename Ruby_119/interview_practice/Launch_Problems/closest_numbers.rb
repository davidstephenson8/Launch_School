# Write a method that takes an array of integers and returns the
# two numbers that are closest together in value.
=begin
P
input: array
output: array with pair of numbers that are closest to each other
E
D
array
array
A
initialize a variable difference
iterate through the array
generate an array with each possible pair of variables
  iterate through the array, adding current value and each other value to a results array
calculate the difference between each pair of variables
return the pair that has the lowest possible difference
C
=end
# Examples:
def generate_pairs(arr)
  pairs = []
  arr.each_with_index do |num1, index1|
    arr.each_with_index do |num2, index2|
      unless index1 == index2
        pairs << [num1, num2]
      end
    end
  end
  pairs.uniq
end  

def closest_numbers(arr)
  lowest_difference = (arr.max - arr.min).abs
  lowest_pair = nil
  pairs = generate_pairs(arr)
  pairs.each do |arr|
    current_difference = arr[0] - arr[1]
    if lowest_difference > current_difference.abs
      lowest_difference = current_difference.abs
      lowest_pair = arr
    end
  end
  lowest_pair
end

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]

# The tests above should print "true".