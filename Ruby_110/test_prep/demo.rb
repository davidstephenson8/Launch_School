array = [1, 2, 3, 4, 5]

a =  array.select do |num|
  puts num if num.odd?
end

p a