=begin
P
input - two arrays
output - one sorted array
E
[1, 5, 9], [2, 6, 8] -> [1, 2, 5, 6, 8, 9]
D
A
create a new array
add all values from first array to new array
iterate through second array
  iterate through first array, comparing value in second array to values in new array
  compare each value to values in first array
  if value in second array is greater than value in new array, add value in second array at index one greater than current
    index to the new array
return new array
=end

# def merge(arr1, arr2)
#   merged_array = []
#   merged_array.concat(arr1)
#   arr2.each_with_index do |num2, index2|
#     merged_array.each_with_index do |num1, index1|
#       if num2 > num1 && num2 <= merged_array[index1 + 1]
#         merged_array.insert(index1 + 1, num2)
#         break 
#       end
#     end
#   end
#   merged_array.concat(arr2) if arr1.empty?
#   merged_array
# end

def merge(arr1, arr2)
  merged_array = []
  merged_array.concat(arr1)
  merged_array
end

p merge([1, 5, 9], [2, 6, 8])
p merge([1, 1, 3], [2, 2])
p merge([], [1, 4, 5])
p merge([1, 4, 5], [])

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]