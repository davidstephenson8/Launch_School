=begin
You are given array of integers, your task will be to count all pairs in that array and return their count.

Notes:

Array can be empty or contain only one value; in this case return 0
If there are more pairs of a certain number, count each pair only once. E.g.: for [0, 0, 0, 0] the return value is 2 (= 2 pairs of 0s)
Random tests: maximum array length is 1000, range of values in array is between 0 and 1000
Examples

[1, 2, 5, 6, 5, 2]  -->  2
...because there are 2 pairs: 2 and 5

[1, 2, 2, 20, 6, 20, 2, 6, 2]  -->  4
...because there are 4 pairs: 2, 20, 6 and 2 (again)
P
input: array
output: integer with number of pairs
rules
- return 0 if array size is 1 or array is empty
- multiple pairs will return a number for each pair
implicit rules
- will there be a case where there's three of a number? Do we return 1 or 2 pairs in that situation? 
E
D
i: array
w: arrays
o: integer
A
initialize a variable for number of pairs as 0
iterate through the array
  if another value in the array matches the current value
    add the current value and the matching value to an array in a pair 
    replace those values with p
  
C
=end

def pairs(arr)
  number_of_pairs = 0
  return number_of_pairs if arr.size < 2
  arr.each_with_index do |num1, index1|
    arr.each_with_index do |num2, index2|
      if !num1.nil? && num1 == num2 && index1 != index2
        number_of_pairs += 1
        arr[index1] = nil
        arr[index2] = nil
        break
      end
    end
  end
  number_of_pairs
end

p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) ==  4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3 
p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0