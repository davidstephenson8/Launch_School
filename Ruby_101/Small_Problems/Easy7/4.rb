def swapcase(letters)
  swapped = letters.chars.map do |char|
    if ("a".."z").include?(char)
      char.upcase 
    elsif ("A".."Z").include?(char)
      char.downcase
    else
      char
    end
  end
  p swapped.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'