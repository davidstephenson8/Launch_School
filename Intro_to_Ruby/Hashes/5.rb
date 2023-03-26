person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

person.key?(:hobbies)

if person.key?(:hobbies)
	puts "Yeah, Bob does that."
else
	puts "idk"
end
