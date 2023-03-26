=begin
P - 
input - 3 integers
output - a symbol determined by what kind of triangle would be formed by those integers
a valid triangle has sides greater than 0, and if two sides are equivalent, their sum must be 
greater than the third side. 
E - 
triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid
D - I think some array methods could be useful here. Filtering by equivalence could help us quickly determine how
many equivalent sides there are. From there, you can sum the sides and then compare them to the other
side that wasn't equivalent for isoceles or just return equilateral or scalene. Any zero values could be 
filtered out first, and then other invalids would be caught with the sum. 
A - 
return invalid if any sides are equal to zero
check how many sides are equivalent
if all three, return equilateral
elsif two, check to see that they're greater than the other side
  if they're greater, return isoceles
  if not, return invalid
else if no sides are equivalent 
  return scalene
=end

def triangle(side1, side2, side3)
  triangle = [side1, side2, side3]
  equal_sides = []
  equal_side_indicies = []
  triangle.each_with_index do |side, index|
    triangle.each_with_index do |side2, index2|
      if side == side2 && index != index2
        equal_side_indicies.push(index, index2)
        equal_sides.push(side1, side2)
      end
    end
  end
  equal_side_indicies.uniq!
  equal_sides = equal_side_indicies.map! do |side|
    triangle[side]
  end
  nonequivalent_sides = triangle.reject do |side|
    equal_sides.any?(side)
  end
  if triangle.any?(0)
    return :invalid
  elsif triangle.uniq.count == 3
    return :scalene
  elsif equal_sides.count == 3
    return :equilateral
  elsif equal_sides.sum > nonequivalent_sides.sum
    return :isosceles
  else
    return :invalid
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
