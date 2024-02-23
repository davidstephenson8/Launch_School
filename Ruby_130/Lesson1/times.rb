def times(num)
  counter = 0
  until counter == num
    yield(counter)
    counter += 1 
  end
end

times(5) do |num|
  puts num
end

5.times do |num|
  puts num
end