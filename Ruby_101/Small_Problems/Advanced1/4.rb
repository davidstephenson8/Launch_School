def transpose(mtrx)
  new_matrix = Array.new(mtrx[0].size) {[]}
  mtrx.each_with_index do |sub_array, outer_index|
    sub_array.each_with_index do |num, inner_index|
      new_matrix[inner_index][outer_index] = num
    end
  end
  new_matrix
end

p transpose([[1, 2, 3, 4]]) #== [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) #== [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]])# ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]])# == [[1]]