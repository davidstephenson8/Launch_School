COUNTDOWN_START = 10

def decrease(counter)
  counter - 1
end

counter = COUNTDOWN_START

COUNTDOWN_START.times do
  puts counter
  counter = rubydecrease(counter)
end

puts 'LAUNCH!'

