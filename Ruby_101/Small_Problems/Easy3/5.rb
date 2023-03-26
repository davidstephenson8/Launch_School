def multiply(a, b)
  a * b
end

def square(a)
  multiply(a, a)
end

p square(5) == 25
p square(-8) == 64

def power_method(a, power)
end


p power_method(2, 2) 
p power_method(2, 3) 
p power_method(2, 4) 

a = 2
p (2.times {a = a * a})
p a