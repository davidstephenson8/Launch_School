puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_percent = gets.chomp.to_f/100

tip = (bill * tip_percent).round(3)
total = (bill + tip).round(3)

tip = sprintf("%.2f", tip)
total = sprintf("%.2f", total)

puts "The tip is $#{tip}"
puts "The total is $#{total}"