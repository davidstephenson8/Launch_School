def negative(int)
  if int > 0
    -int 
  else
    int
  end
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0 