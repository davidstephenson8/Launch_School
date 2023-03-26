# def oddities(array)
# odd_array = []
#   array.each_index do |index|
#     if index.even?
#       odd_array << array[index]
#     end
#   end
# p odd_array
# end

# def oddities(array)
#   n = 0
#   odd_elements = []
#   while n < array.size
#     odd_elements << array[n]
#     n += 2
#   end
#   odd_elements
# end

def oddities(array)
  n = 0
  odd_elements = []
  until n == array.size
    odd_elements << array[n] if n.even? 
    n += 1
  end
  p odd_elements
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
p oddities([1, 2, 3, 4, 1]) == [1, 3, 1]
