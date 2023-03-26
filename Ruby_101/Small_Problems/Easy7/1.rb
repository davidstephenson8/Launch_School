# def interleave(arr1, arr2)
#   interleaven_array = []
#   arr1.each_index do |index|
#     interleaven_array << arr1[index]
#     interleaven_array << arr2[index]
#   end
#   interleaven_array
# end

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

