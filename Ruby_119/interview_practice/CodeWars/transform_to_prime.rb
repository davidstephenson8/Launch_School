=begin
Given a List [] of n integers , find minimum number to be inserted in a list, 
so that sum of all elements of list should equal the closest prime number.

P
i: an array of integers
o: integer 
explicit rules:
output should be equal to the number that makes the sum of all elements of the list equal to the nearest 
prime number. 
implcit
return 0 if sum of array is already a prime number

E
[5, 2] -> 0
D
variables
A
determine if a number is prime or not
  iterate through a range from 2 to one less than the number
    if number is divisible by a number in this range, return false
    if it's not divisible by any number in this range return true
initialize a result to zero
start a loop
  see if array sum plus result is prime
  if it is, return result
  if it's not, increment result     
C
=end

def prime?(int)
  (2..(int - 1)).each do |multiple|
    return false if int % multiple == 0
  end
  true
end

def minimum_number(numbers)
  result = 0
  loop do 
    return result if prime?(numbers.sum + result)
    result += 1
  end
end

p prime?(7)
p prime?(17)
p prime?(37)
p prime?(42)

p minimum_number([2, 3, 1])
p minimum_number([50,39,49,6,17,28])
p minimum_number([1, 1, 1])
