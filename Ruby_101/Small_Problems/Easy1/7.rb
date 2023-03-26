=begin
P -
input - an integer
output - a string alternating between 1 and 0. 
E -
D -
A - 
I think I can do this by adding characters to a string in a while loop for the length of the string
to switch between the 1 and 0 I was thinking I'd use the length of the string as well. So if the length 
is even it's a 1, if it's odd it's a 0. 

start

gets desired_string_length 
initialize method using desired string length
if desired string length = string break
elsif string.size.even? string << 1
else string << 0

	This worked great except for I forgot I was returning 0s or 1s and not the string.
=end

def stringy(desired_string_length)
	string = ""
	while desired_string_length != string.size
		if string.size.even?
			string << "1"
		else
			string << "0"
		end
	end
	return string
end



puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
	