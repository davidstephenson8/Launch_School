def factor_machine(arr, divisor)
  factor_array = arr.select {|num| num % divisor == 0 }
  return factor_array
  puts "The number #{divisor} can divide evenly into #{factor_array.count} numbers in this array."
end

numbers = (1..12).to_a

factors = factor_machine(numbers, 3)

p factors