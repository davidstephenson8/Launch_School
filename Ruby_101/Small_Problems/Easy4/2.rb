def century(year)
  century_integer = (year / 100) + 1

  century_integer = (year / 100) if year % 100 == 0

  if century_integer.digits[1] == 1 
    century_name = century_integer.to_s + "th"
  elsif century_integer.digits[0] == 1
    century_name = century_integer.to_s + "st"
  elsif century_integer.digits[0] == 2
    century_name = century_integer.to_s + "nd"
  elsif century_integer.digits[0] == 3
    century_name = century_integer.to_s + "rd"
  else 
    century_name = century_integer.to_s + "th"
  end

end
  

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'