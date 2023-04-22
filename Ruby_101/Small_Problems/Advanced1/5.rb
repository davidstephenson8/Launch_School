=begin
P
input - a matrix
output - a matrix with values rotated by 90 degrees
E
1 5 8         3 4 1
4 7 2         9 7 5
3 9 6  -----> 6 2 8
[2][0] becomes [0][0]
[1][0] becomes [0][1]
[0][0] becomes [0][2]
------
[0][0] becomes [0][2]
[0][1] becomes [1][2]
[0][2] becomes [2][2]

              6 1 
              4 2
1 2 3 4       3 2
6 4 2 1 ----> 1 4

[0][0] becomes [0][1]
[0][1] becomes [1][1]
[0][2] becomes [2][1]
[0][3] becomes [3][1]
D
A
create an array with the same number of elements as the size of the first array in matrix
iterate through matrix
  iterate through subarray
  add each number to each array, adding newer elements before older elements
    iterate through these subarrays using index of current number (subarray number is equal to index in current array)
return new array
=end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

def rotate90(mtrx)
  new_matrix = Array.new(mtrx[0].size) {[]}
  mtrx.each_with_index do |sub_array, outer_index|
    sub_array.each_with_index do |num, inner_index|
      new_matrix[inner_index].unshift(num)
    end
  end
  new_matrix
end

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2