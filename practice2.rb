=begin
==============
Problem
select the number out of an array if its index is a fibonacci number

------------------------
-  Inputs: array, integer
-  Output: element
---
** Rules **
Explicit
1. return a number out of an array if its index is a fibonacci number
2. fibonacci series is 1, 1, 2, 3, 5, 8, 13, 21..
3. if index is not a fibonacci number then return nil

Implicit
1. 
2.
3.


---
Examples 
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: [1, 2, 3, 4, 5, 6, 7, 8, 9], 2
  -  Output: 2 
-  Example 2
  -  Inputs: [1, 2, 3, 4, 5, 6, 7, 8, 9], 5
  -  Output: nil
---
Modelling/Scratch Pad
--------------------------------------------------



--------------------------------------------------
Data Structures
--------------
arrays

---
Algorithm
---------
develop method for determining if a number passed to it is a fibonacci number
input is integer, output is true/false
start with array containing two ones, set equal to variable `fibonacci`
start loop
check to see if last number in fibonacci arrayis greater or equal than the number passed to the method
if not, sum last two values in array and add it to the end of the array
if yes, check to see if fibonacci array includes integer
    return result 
iterate through the array
  if num is the same as given element and index is fibonacci number
  return num
  break out of iteration
end
=end

def fibonacci?(int)
  fibonacci = [1, 1]
  loop do
    if fibonacci[-1] >= int
      return fibonacci.include?(int)
    else
      fibonacci << fibonacci[-1] + fibonacci[-2]
    end
  end
end

p fibonacci?(1)
p fibonacci?(2)
p fibonacci?(4)
p fibonacci?(20)
p fibonacci?(21)

def fibonacci_index(array)
  array.select.with_index do |num, index|
    fibonacci?(index)
  end 
end

p fibonacci_index([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21])