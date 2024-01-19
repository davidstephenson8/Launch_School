def step(start, final, step)
  current_value = start
  while current_value <= final
    yield(current_value)
    current_value += step
  end
  start
end

p step(1, 10, 3) {|number| puts "number = #{number}"}
