(1..99).each do |n|
  puts( n.even? ? n : next )
end

1.upto(99){|n| puts(n) if n.even?}