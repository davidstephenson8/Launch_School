=begin
==============
Problem: 
given a list of integers, return a string in range format. Range format means that any consecutive numbers are 
returned as a range of "int-int". Items in range format are separated by commas
------------------------
-  Inputs: an array of integers in ascending order
-  Output: a string in range format
---
Explicit Rules
1. ranges have the starting integer separated by the final integer by a dash
2. a range needs to span at least 3 numbers
3.

Implicit Rules
1.
2.
3.

Examples:
-  Example 1
  -  Inputs: 12, 13, 15, 16, 17
  -  Output: "12,13,15-17"
-  Example 2
  -  Inputs:
  -  Output:
---
---
Data Structure
--------------

---
Algorithm
---------
create a helper method range?
  passed an array
    returns false if the size of the array is less than 3
    iterates through the array with an index value
      returns false unless value before corrent value is one less than current value
    
    if iteration completes through entire array, returns true  
initialize `result` to an empty array`
iterate through values in array
for each value, check to see if the array of three that includes the current value is a range
  if it isn't, add value converted to a string to `result`
  if it is, check the next biggest array
    continue checking arrays until an array returns false
  add the first and last value of the last array to return true when checked if it was a range
  as strings joined by a "-" to the results array
  return the results array joined with commas
---
=end

# p range?([1, 2, 3, 4])
# p range?([1, 3, 2])
# p range?([-10, -9, -8, -7, -5])
# p range?([-10, -9, -8, -7, -6])

def range?(array)
  return false if array.size < 3
  array.each_with_index do |value, index|
    next if index == 0
    return false unless array[index - 1] == array[index] - 1
  end
  true
end

def solution(list)
  result = []
  index = 0
  incrementer = 2
  range = false
  until index >= list.size
    p index
    p result
    while range?(list[index..index+incrementer])
      incrementer += 1
      range = true
      break if list[index..index+incrementer - 1] == list[index..-1]
      p list[index..index + incrementer]
    end
    if range
      result << "#{list[index]}-#{list[index + incrementer - 1]}" 
      index += incrementer
      incrementer = 2
      range = false
    else
      result << list[index]
      index += 1
    end
  end
  result
end

p solution([-10, -9, -8, -6, -3, -2, -1, 0, 1, 3, 4, 5, 7, 8, 9, 10, 11, 14, 15, 17, 18, 19, 20]) #== "-10--8,-6,-3-1,3-5,7-11,14,15,17-20"

