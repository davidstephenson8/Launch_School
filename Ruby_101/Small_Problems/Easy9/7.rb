def get_grade(a, b, c)
  grades = [a, b, c]
  average = grades.sum / grades.size 
  if (90..100).include?(average)
    p "A"
  elsif (80...90).include?(average)
    p "B"
  elsif (70...80).include?(average)
    p "C"
  elsif (60...70).include?(average)
    p "D"
  elsif (0...60).include?(average)
    p  "F"
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"