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

def fibonacci_last(integer)
  fibonacci(integer).to_s[-1]
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4

