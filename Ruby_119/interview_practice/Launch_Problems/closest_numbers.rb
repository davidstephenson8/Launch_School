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
      if index1 < index2
        pairs << [num1, num2]
      end
    end
  end
  pairs
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

p generate_pairs([5, 25, 15, 11, 20])
p generate_pairs([19, 25, 32, 4, 27, 16])

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]

# The tests above should print "true".


#generate pairs from a string

def pairs(string)
  results = []
  characters = string.chars
  characters.each_with_index do |char1, index1|
    characters.each_with_index do |char2, index2|
      if index1 <= index2
        results << characters[index1..index2].join 
      end
    end
  end
  results
end

p pairs("swagilecious")

#take each group of 3 from the string. Don't return slices less than 3.

def slices(string)
  index = 0
  results = []
  loop do 
    substring = string[index..index + 2]
    results << substring if substring.size > 2 
    index += 3
    break if index >= string.size
  end
  results
end

p slices("eduardo ramirezxx")

#actually do return the remaining slices

def slices_with_remainder(string)
  index = 0
  results = []
  loop do 
    substring = string[index..index + 2] 
    results << substring
    index += 3
    break if index >= string.size
  end
  results
end

p slices_with_remainder("eduardo ramirezxx")

