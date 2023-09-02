def new_reverse(array)
  results = []
  until array.empty?
    results << array.pop
  end
  results
end

p new_reverse([1, 2, 3, 4, 5, 6, 7])
p new_reverse([1, "a", 1, "a"])