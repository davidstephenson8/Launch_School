puts "WHat is your age?"
age = gets.chomp.to_i
puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

time_until_retirement = retirement_age - age

puts "It's #{Time.now.year}. You will retire in #{Time.now.year + time_until_retirement}"
puts "Only #{time_until_retirement} years to go!"
