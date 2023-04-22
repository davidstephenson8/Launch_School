

# def merge(arr1, arr2)
#   return arr2 if arr1.empty?
#   merged_array = []
#   arr1.each do |num|
#     merged_array << num
#   end
#   arr2.each do |second_array_number|
#     merged_array.each_with_index do |first_array_number, first_array_index|
#       if second_array_number > first_array_number && second_array_number <= merged_array[first_array_index + 1]
#         merged_array.insert(first_array_index + 1, second_array_number)
#         break
#       end
#     end
#   end
#   merged_array
# end

def merge(array1, array2)
  index2 = 0
  result = []

  array1.each do |value|
    while index2 < array2.size && array2[index2] <= value
      result << array2[index2]
      index2 += 1
    end
    result << value
  end

  result.concat(array2[index2..-1])
end

def merge_sort(arr)
  return arr if arr.size == 1
  first_half = arr.slice(0...arr.size/2)
  second_half = arr.slice(arr.size/2...arr.size)
  first_half
  second_half
  first_half = merge_sort(first_half)
  second_half = merge_sort(second_half)
  merge(first_half, second_half)
end

p merge_sort([9, 5, 7, 1]) #== [1, 5, 7, 9]
p merge_sort([5, 3]) #== [3, 5]
p merge_sort([6, 2, 7, 1, 4]) #== [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie))# == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) #== [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
