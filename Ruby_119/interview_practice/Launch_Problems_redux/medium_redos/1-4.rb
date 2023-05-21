=begin
==============
Problem

you have a bank of n switches, they're all off. You turn them all on. Then you modify every second one. Then you modify every 
third one. You continue this until you've switched every n switch. 

------------------------
-  Inputs: integer
-  Output: an array
---
** Rules **
Explicit
1. return array with switches that are on after all switches have been completed
2. number of pass through the switches is the same as the factor of the switches that should be modified
  (pass 4, switches 4, 8, 12)
3. 

Implicit
1. 
2.
3.


---
Examples 
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 12
     [1,  2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
      on off off on on on on off off  off on on
  -  Output: 
-  Example 2
  -  Inputs: 
  -  Output: 
---
Modelling/Scratch Pad
--------------------------------------------------



--------------------------------------------------
Data Structures
--------------
array

---
Algorithm
---------
initialize an variable `switches` to an empty array
initialize variable `on` to an empty array
  iterate through a range from 1 to the given integer
    for each number add a true to the `switches` array
iterate through a range from one to the given integer
  iterate through switches
    for the given number if the index (+1) of the value is evenly divisible by the number, modify the
    value to the oppositve of the boolean returned
iterate through the switches array
    if the value is true, add its index plus one to the on array
return `on`` array
=end




def switch_toggles(int)
  switches = []
  on = []
  (1..int).each do |num|
    switches << false
  end
  (1..int).each do |num|
    switches.map!.with_index do |switch, index|
      if (index + 1) % num == 0
        !switch
      else
        switch
      end
    end
  end
  switches.each_with_index do |switch, index|
    if switch
      on << index + 1
    end
  end
  on
end

p switch_toggles(4)
p switch_toggles(17)
p switch_toggles(4105)
