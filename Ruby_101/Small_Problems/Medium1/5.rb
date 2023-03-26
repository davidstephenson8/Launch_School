require "pry"
def diamond(integer)
  string = " " * integer
  i = 0
  (0..integer).each do |num|
    if (num % 2).odd?
      string[(integer/2 + i), num] = "*" * num
      puts string
      i -= 1
    end
  end
  i = 0
  (0..integer).each do |num|
    if (num % 2).odd?
      i += 1
      string[i-1] = " "
      string[-i] = " "
      puts string
    end
  end
end

diamond(3)
diamond(7)
diamond(13)
diamond(17)

=begin
"   *   "
 0123456   first line starts at 3
"  ***  "
 1234567   next line starts at 2
" ***** "
 1234567   next line starts at 1
"*******"
 1234567   next line starts at 0
" ***** " 
 1234567   now 2
"  ***  "
 1234567   now 3
"   *   "
 1234567   now 4
 
 so I'll insert a string with a length equal to an odd integer at an index that starts at half of the integer length
 divided by 2 plus one that decreases to zero and then increases to 1/2 the integer plus 1 into an empty string the length
 of the integer

 to decrease the size of the stars in the string, I'll start with the odd number after the integer and then decrease down
=end
