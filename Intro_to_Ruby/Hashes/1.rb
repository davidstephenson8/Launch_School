family = {  uncles: ["bob", "joe", "steve"],
	sisters: ["jane", "jill", "beth"],
	brothers: ["frank","rob","david"],
	aunts: ["mary","sally","susan"]
}

family_names = []

family.select do|k, v| 
	if k == :sisters || k == :brothers
		family_names.push(v)
	end
end

p family_names

# I didn't initially use the .flatten method because I was using puts in my program. I didn't realize that
# I had an array of arrays. 