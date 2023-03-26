arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

arr.select! do |hash|
  hash.all? do |key, array|
    array.all? {|int| int.even?}
  end
end

p arr
