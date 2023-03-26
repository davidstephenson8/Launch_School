def halvsies(array)
  array1 = []
  array2 = []
  new_size = array.size / 2 + 1 if array.size.odd?
  new_size = array.size / 2 if array.size.even?
  array1 = array[0, new_size]
  array2 = array[new_size..-1]
  [array1, array2]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]