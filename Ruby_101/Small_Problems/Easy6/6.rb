def merge(arr1, arr2)
  arr1 << arr2
  arr1.flatten!
  p arr1.uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

