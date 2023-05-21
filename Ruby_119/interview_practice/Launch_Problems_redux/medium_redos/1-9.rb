def fibonacci(int)
  numbers = [1, 1]
  return 1 if int <= 2 
  (int - 2).times do
    numbers << numbers[-2, 2].sum
  end
  numbers[-1]
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501
