=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: an array
-  Output: a list of each kind of car and the number

---
**Implicit Requirements:**
---
**Clarifying Questions:**
1. 
2. 
---
**Mental Model:**

I think that I can iterate through each value in the array, check to see if it's already a key in the 
array and if it's not add it to the array. I think that I can just modify the value by adding one if the
key already exists in the hash. If the hash doesn't contain the value the same addition to the 
value could still work. 

---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 
  -  Output: 
-  Example 2
  -  Inputs: 
  -  Output: 
---
_Your Test Cases:_
-  Example 3
  -  Inputs: 
  -  Output: 
---
_Your Edge Cases:_
-  Example 4
  -  Inputs: 
  -  Output: 
---
Data Structure
Definitely using a hash here. 
---
Algorithm
Given an array
Make an empty new hash
Access a value in the array
check to see if that value matches a key in the hash
if it doesn't, make a new key/value pair, where car type is the key and the value is 1
If the value does match a key in the hash, increment the value by 1. 
output the keys and values in the hash
=end



vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count = {}

vehicles.each_index do |n|
  if count.include?(vehicles[n])
    count[vehicles[n]] += 1
  else
    count[vehicles[n]] = 1
  end
end

count.each { |car_type, number| puts "#{car_type} => #{number}"}

