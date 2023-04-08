def demo_sort(arr)
  puts "first we sort a <=> b"
  sorted1 = arr.sort do |a, b|
    puts "this is a #{a}"
    puts "this is b #{b}"
    puts "the value for a <=> b is #{a <=> b}"
    a <=> b 
  end
  p sorted1
  puts "then we'll sort b <=> a"
  sorted2 = arr.sort do |a, b|
    puts "this is a #{a}"
    puts "this is b #{b}"
    puts "the value for b <=> a is #{b <=> a}"
    b <=> a
  end
  p sorted2
end

demo_sort([6, 1, 44, 23, -41])