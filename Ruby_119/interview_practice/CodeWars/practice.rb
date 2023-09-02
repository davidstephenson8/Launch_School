def direction(arr)
	arr.map! do |string|
		string.gsub("e", "w").gsub("E", "W").gsub("a", "e").gsub("A", "E")
	end
end

p direction(["east", "E A S T"])