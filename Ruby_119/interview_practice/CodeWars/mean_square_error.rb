def solution (arr1, arr2)
  squares = []
  arr1.each_with_index do |num, index|
    squares << (num - arr2[index]).abs ** 2
  end
  floats = squares.map(&:to_f)
  average = floats.inject(:+) / squares.size
end

p solution([1, 2, 3], [4, 5, 6]) == 9
p solution([10, 20, 10, 2], [10, 25, 5, -2]) == 16.5
p solution([-1, 0], [0, -1]) == 1
