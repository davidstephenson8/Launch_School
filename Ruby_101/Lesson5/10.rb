arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

arr.map! do |hash|
  hash.each do |key, int|
    hash[key] += 1
  end
end

p arr