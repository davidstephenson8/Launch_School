=begin

what's wrong with this code is that the limit variable is defined outside of the method. 

=end



def fib(first_num, second_num)
  limit = 15
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

p fib(6, 3)

