def some(*set)
  array = set
  p array
end

proc = Proc.new {"I'm a #{self}"}

p some(3, 5, 7)
p some