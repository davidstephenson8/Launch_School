puts ">> Please enter an integer greater than 0"
integer = gets.chomp.to_i
puts ">> Enter 's' to calcuate the sum, 'p' to compute the product."
operation = gets.chomp

integer_range = []
product = 1

for n in (1..integer) 
  integer_range << n
end

if operation == "s"
  puts "The sum of the integers from 1 to #{integer} is #{integer_range.inject(:+)}"
else
  puts "The product of the integers from 1 to #{integer} is #{integer_range.inject(:*)}"
end
