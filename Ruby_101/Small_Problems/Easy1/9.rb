def sum(int)
	numbers = int.to_s.split("")
	integers = numbers.map {|num| num.to_i}
	integers.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45