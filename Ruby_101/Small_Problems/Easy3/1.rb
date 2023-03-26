array = [0, 1, 2, 3, 4]

array.each do |number|
  puts "What's number #{number + 1}"
  value = gets.chomp.to_i
  array[number] = value
end

puts "Enter the last number"
check = gets.chomp.to_i

puts(array.include?(check) ? "The number #{check} appears in #{array}" : "The number #{check} does not appear in #{array}")
