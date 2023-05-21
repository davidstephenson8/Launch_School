def fibonacci(int)
  if int <= 2
    return 1
  end
  fibonacci(int - 2) + fibonacci(int - 1)
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
p fibonacci(50)