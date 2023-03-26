def penultimate(string)
  words = string.split
  words if string.size == 1
  '' if string.size == 0
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'