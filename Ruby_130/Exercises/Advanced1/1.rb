# make a new Enumerator object
# should be able to interate over an infinite list of factorials
# print 

factorial = Enumerator.new do |y|
  number = 0
  result = 1
  loop do
    if number == 0 || number == 1
      y << result
    else
      result = number * result
      y << result
    end
    number += 1
  end
end

7.times {puts "#{factorial.next}" }
3.times {puts "#{factorial.next}"}
factorial.rewind
7.times {puts "#{factorial.next}"}
