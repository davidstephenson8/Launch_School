=begin
P - 
input: rational
output: array of denominators that can be added into rational
rules - any rational can be used as the original number, not just rationals with a denominator of 1
E - rational 2/1 returns [1, 2, 3, 6]
    rational 3/1 returns [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]
    rstional 137/60 returns [1, 2, 3, 4, 5]
D - arrays? unsure
A - 
start by initializing denominator array
initialize first denominator value of 1
create sum variable initialized to 0
start while loop with always true value (will break when condition met)
see if adding current ratio to sum is greater than target ratio, equal to target ratio or less than target ratio
  if equal to target ratio, return denominator array, break loop
  if less than target ratio, add current value to denominator array, move on to test next value
  if greater than target, move on to test next value
end
=end

def egyptian(num)
  #returns array of denominators that are part of fraction
  denominators = []
  current_denominator = 1
  sum = 0
  while true
    if (sum + Rational(1, current_denominator)) == num
      denominators << current_denominator
      return denominators
    elsif (sum + Rational(1, current_denominator)) < num
      sum += Rational(1, current_denominator)
      denominators << current_denominator
      current_denominator += 1
      denominators
    elsif (sum + Rational(1, current_denominator)) > num
      current_denominator += 1
    end
  end
end

=begin
P 
input - take array of denominators
output - the rational that they add up to
E 
[1] returns Rational (1/1)
[1, 2] returns Rational(3/2)
[1, 2, 4] returns Rational(7/4)
A
initialize a sum variable to 0
iterate through denominators array
add each rational with the denominator to the sum variable
return sum variable once you've iterated through the whole array
=end

def unegyptian(arr)
  sum = 0
  arr.each do |num|
    sum += Rational(1, num)
  end
  sum
end

p egyptian(Rational(1, 1))
p egyptian(Rational(3, 2))
p egyptian(Rational(7, 4))
p egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)

