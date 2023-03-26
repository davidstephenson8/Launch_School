def reverse_sentence(string)
  words = string.split
  result = []
  words.each_index do |index|
    result << words[-(index+ 1)]
  end
  result.join(" ") 
end
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''