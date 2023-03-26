=begin
  
I think that when this code runs the value of a is 2 and the value of b becomes [7, 8]

=end

a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

p a
p b