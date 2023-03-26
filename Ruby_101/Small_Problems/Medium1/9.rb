def fibonacci(integer)
  fibonacci_numbers = [1, 1]
  if integer <= 2
    fibonacci_numbers[integer-1]
  else
    2.upto(integer) do |number|
      fibonacci_numbers << (fibonacci_numbers[number - 1] + fibonacci_numbers[number - 2])
    end
  end
  fibonacci_numbers[integer-1]
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001)

