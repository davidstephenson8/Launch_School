# Write a method that takes an array of integers and returns the
# two numbers that are closest together in value.

# Examples:

=begin
P
return the two numbers that are closest together in value
rules:
if numbers are separated by the same value, return the pair that appears first
E
[5, 25, 15, 11, 20]
[15, 11]
[12, 7, 17]
[12, 7]
D
arrays
A
intialize `pairs` to an empty array
iterate through the given array, taking note of index
iterate through the given array a second time, taking note of index a second time
push an array of each character into `pairs` if the second index is greater than first index
sort by the difference between the two characters, assign to `sorted`
return the first subarray in `sorted`
=end

def closest_numbers(array)
  pairs = []
  array.each_with_index do |num1, index1|
    array.each_with_index do |num2, index2|
      pairs << [num1, num2] if index1 < index2
    end
  end
  sorted = pairs.sort_by{|pair| pair.inject(:-).abs}
  sorted[0]
end

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]

# The tests above should print "true".