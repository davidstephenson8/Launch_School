def greeting(name, options = {})
	if options.empty?
		puts "Hi, my name is #{name}"
	else
		puts "Hi, my name is #{name} and I'm #{options[:age]} years old and I live in #{options[:city]}."
		puts options
	end
end

greeting("Bob")
greeting("Bob", age: 62, city: "New York City", house: "apartment", pet: "cat")

