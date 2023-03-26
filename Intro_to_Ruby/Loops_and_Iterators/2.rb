input = 0

while input != "STOP" do
	puts "What do you want me to say? Type STOP to get me to stop."
	input = gets.chomp
	puts input
end

# forgot the do keyword in the first line of the while loop. The program still seemed to execute well. 