puts ">|>|> Enter the first number"
integer1 = gets.chomp.to_i

puts ">|>|> Enter the second number"
integer2 = gets.chomp.to_i

sum        = integer1 + integer2
difference = integer1 - integer2
product    = integer1 * integer2
quotient   = integer1 / integer2
modulo     = integer1 % integer2
exponent   = integer1 ** integer2

puts ">|>|> #{integer1} + #{integer2} = #{sum}"
puts ">|>|> #{integer1} - #{integer2} = #{difference}"
puts ">|>|> #{integer1} * #{integer2} = #{product}"
puts ">|>|> #{integer1} / #{integer2} = #{quotient}"
puts ">|>|> #{integer1} % #{integer2} = #{modulo}"
puts ">|>|> #{integer1} ** #{integer2} = #{exponent}"
