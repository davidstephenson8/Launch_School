puts "Give me a four digit number"
n = gets.chomp
n = n.to_i
thousands = n / 1000
hundreds = (n % 1000) / 100
tens = n % 1000 % 100 / 10
ones = n % 1000 % 100 % 10

puts thousands
puts hundreds
puts tens
puts ones
