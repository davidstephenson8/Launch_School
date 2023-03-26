arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

arr[0].sort! do |a, b|
  b <=> a 
end

arr[1].sort! do |a, b|
  b <=> a 
end

arr[2].sort! do |a, b|
  b <=> a 
end

p arr