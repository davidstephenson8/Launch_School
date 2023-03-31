words = %w(jump trip laugh run talk)
new_array = words.map do |word| 
  word.start_with?("t")
end
p new_array