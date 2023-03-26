arr = ["David", "Kaylee", "Gabey", "???"]

arr.each_with_index {|value, index| puts "#{index} #{value}"}

# initially I was confused by the requirements and used the each_index to produce the same output. The
# program looked like
# arr.each_index {|index| puts "#{index} #{arr[index]}"}