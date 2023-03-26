def cleanup(string)
  deleted = string.split.map do |word|
              p word.chars
              word.chars.delete_if {|char| !("a".."z").include?(char)}
  p deleted
  p deleted.join(" ")
end


p cleanup("---what's my +*& line?") == ' what s my line '

