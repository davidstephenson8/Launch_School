def triangle(int)
  i = 0
  string = " " * int
  while i < int
    i +=1 
    string[-i] = "*"
    puts string
  end
end

triangle(9)
triangle(5)
triangle(25)

def other_triangle(int)
  i = 0
  string = " " * int
  while i < int
    i +=1 
    string[i] = "*"
    puts string
  end
end

other_triangle(9)
other_triangle(5)
other_triangle(25)