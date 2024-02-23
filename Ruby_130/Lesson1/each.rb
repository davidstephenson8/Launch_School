def each(array)
  index = 0
  until index == array.size
    yield array[index] if block_given?
    index += 1
  end
  array
end

p [1, 2, 3].each{|num| "do nothing"}.select{ |num| num.odd? }