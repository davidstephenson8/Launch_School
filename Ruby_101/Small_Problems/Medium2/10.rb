def sum_square_difference(integer)
  numbers = []
  1.upto(integer) do |number|
    numbers << number
  end
  squares = numbers.map do |number|
    number**2
  end
  (numbers.inject(:+)**2 - squares.inject(:+))
end

p sum_square_difference(3) == 22
# -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150