def fibonacci(n)
  if n <= 2
    1
  else
    fibonacci(n-1) + fibonacci(n-2)
  end
end

p fibonacci(1)
p fibonacci(2)
p fibonacci(3)
p fibonacci(4)
p fibonacci(5)
p fibonacci(12)
p fibonacci(20)
p fibonacci(50)