arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

arr.each do |subarray|
  subarray.select! do |int|
    int % 3 == 0
  end
end

p arr