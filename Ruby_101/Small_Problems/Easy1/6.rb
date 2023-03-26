=begin
	
P
input - string
output - modified string

E


D - array
A 

take string input
split string into substrings, add to array
evaluate each component of array to see which are greater than 5
any greater than 5 get reversed
join the string back together

would be best to do this all within the array.

Initially I was approaching this wrong and trying to create a new array with map. Reverse!
was the better approach because it modified the value within the array through each but didn't
pull the two arrays apart. 

=end


def reverse_words(string)
	words = string.split
	words.each do |word|
		if word.size > 4
			word.reverse!
		end
	end
	reverse = words.join(" ")
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
