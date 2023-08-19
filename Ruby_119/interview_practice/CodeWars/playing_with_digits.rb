=begin
P
for a given integer, return the number integer needs to be multiplied to 
  equal the sum of each of the digits raised to an increasing power, which will also start at a given value
E
D
A
assign digits to the result of separating the integer into digits reversed
transform this array of digits by raising each to a power calculated by adding the given power and their index
sum digits, store in variable `sum`
if the modulus of this sum and the initial integer is zero, return sum divided by the initial integer
  if not, return -1
C
=end


def dig_pow(int, power)
  digits = int.digits.reverse
  digits.map!.with_index do |digit, index|
    digit ** (power + index)
  end
  sum = digits.sum
  sum % int == 0 ? sum / int : -1
end

p dig_pow(89, 1) == 1
p dig_pow(92, 1) == -1
p dig_pow(46288, 3) == 51
p dig_pow(695, 2) == 2
