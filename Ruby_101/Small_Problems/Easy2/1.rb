puts "What is your name?"
name = gets.chomp
name.empty? ? name = "Teddy" : nil

puts "#{name} is #{rand(20..200)} years old!"