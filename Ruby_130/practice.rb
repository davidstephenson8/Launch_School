def some(*set = 3, 5)
  array = set
  puts array
end

proc = Proc.new {"I'm a #{self}"}

p some(3, 5, 7)
p some