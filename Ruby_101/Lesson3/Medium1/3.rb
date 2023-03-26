def factors(number)
  divisor = number
  factors = []
  if number <= 0
    puts "Invalid input to factors method"
    return
  end

  until divisor == 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end 
end

p factors(12)
p factors(0)
p factors(-1)

# the number % divisor is checking to see if the number can be divided without a remainder

# The purpose of the last line is to ensure that the program returns the correct value. If not it would return something weird from the until loop. 