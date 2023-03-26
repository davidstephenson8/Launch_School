def triangle(angle1, angle2, angle3)
  triangle = [angle1, angle2, angle3]
  if triangle.reduce(:+) != 180 || triangle.any?(0)
    :invalid
  elsif triangle.any?(90)
    :right
  elsif triangle.max > 90
    :obtuse
  else
    :acute
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid