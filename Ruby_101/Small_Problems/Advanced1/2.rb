=begin
P
input: odd integer greater than 6
output: star in grid with height and width of integer
E
D
A
create array of height units equal to the value of the integer
initialize values for how far to indent outer stars
determine middle index for line and star
iterate through array
  initialize blank line to be modified with indicies
  transform lines in top half of star using indent values that increase by one with each iteration, always placing
  and asterisk at middle index of line
  at middle line, replace line with line full of stars
  transform lines in bottom half of star starting with same indicies used in top half, but decreasing
output array of empty strings with puts
=end

def star(int)
  return "odd integers 7 or larger please" if int.even? || int < 7
  star = []
  height_unit = " "
  int.times do
    star << height_unit
  end
  middle_index = int/2
  indent = 0
  star.map! do |line|
    star_part = " " * int
    if star.index(line) < middle_index
      star_part[indent] = "*"
      star_part[middle_index] = "*"
      star_part[-(indent + 1)] = "*"
      indent += 1
    elsif star.index(line) == middle_index
      star_part = "*" * int
    else
      star_part[indent] = "*"
      star_part[middle_index] = "*"
      star_part[-(indent + 1)] = "*"
      indent -= 1
    end
    star_part
  end
  puts star
end

star(7)
star(13)
star(25)
star(81)
