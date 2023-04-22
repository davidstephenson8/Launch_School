=begin
P
input: multi dimensional 3 by three array representing a matrix
output: multi dimensional array that turns the rows of the array into columns
E
1 5 8        1 4 3
4 7 2        5 7 9
3 9 6  ----> 8 2 6
D arrays
array[0][0] --> array[0][0]
array[0][1] --> array[1][0]
array[0][2] --> array[2][0]
array[1][0] --> array[0][1]
etc...

A
iterate through matrix array, noting outer index
  iterate through sub array, noting inner index
    add each element to new matrix, but swapping outer index to be inner index and inner index to be outer index
return new matrix
=end

matrix = [
  [1, 5, 8, 9, 9],
  [4, 7, 2, 4, 1],
  [3, 9, 6, 1, 1]
].freeze

def transpose(mtrx)
  new_matrix = Array.new(mtrx[0].size) {[]}
  mtrx.each_with_index do |sub_array, outer_index|
    sub_array.each_with_index do |num, inner_index|
      new_matrix[inner_index][outer_index] = num
    end
  end
  new_matrix
end

new_matrix = transpose(matrix)

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]