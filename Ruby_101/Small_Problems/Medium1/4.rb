=begin
Problem

You have a set number of switches n that are all initially off. You move through the switches n times, and which
switches you interact with is determined by the number of pass you're on. On pass one you turn all of the switches
on. On pass two you interact with switches 2, 4, 6 etc, on the third pass you interact with switches divisible by
three, etcetera. You move through the switches a number of times equal to the total number of switches.  

E - 
D - two dimensional array
A - 

each time you move through the array switch the corresponding boolean value to its opposite. 

C - 
=end

def switch_toggle(integer)
  switches = []
  results = []
  1.upto(integer) do |n|
    switches << [n, false]
  end
  (1..integer).each do |n|
    switches.each do |switch|
      if switch[0] % n == 0
       switch[1] = !switch[1]
      end
    end
  end
  switches.select do |switch|
    if switch[1]
      results << switch[0]
    end
  end
  results
end

p switch_toggle(4)
p switch_toggle(7)
p switch_toggle(15)
p switch_toggle(17)
p switch_toggle(102)
p switch_toggle(1000)