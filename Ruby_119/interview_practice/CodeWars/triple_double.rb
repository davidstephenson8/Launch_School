=begin
==============
Problem: 
return 1 if there's a straight triple of a number in num1 and a double of the same number in num2. Return 0 if that's not
the case.
------------------------
-  Inputs: two numbers
-  Output: 0 or 1
---
Explicit Rules
1. 
2. 
3. 

Implicit Rules
1.
2.
3.

Examples:
-  Example 1
  -  Inputs: 451999277, 41177722899
  -  Output: 1
-  Example 2
  -  Inputs: 1112, 122
  -  Output: 0
---
---
Data Structure
--------------

---
Algorithm
---------
get each consecutive set of 3 from the input. 
  convert the first number into a an array
  get all slices of 3 from the array
iterate through the slices of 3
  select slices where the other two items in the array match the first item in the array
if the array of filtered slices has a size, find the first number of the first element and set it equal to `tester`
if the size is 0, return 0
get all of the slices of two from the second number
select all of the slices with all characters that match `tester`
if selected slices has size of 1, return 1
if size of 0 return 0
---
=end

def triple_double(num1,num2)
  first_slices = []
  num1.to_s.chars.each_cons(3) do |triple|
    first_slices << triple
  end
  triples = first_slices.reject do |slice|
    slice.any?{ |num| num != slice[0]}
  end
  if triples.size == 0
    return 0
  else
    tester = triples[0][0]
  end
  second_slices = []
  num2.to_s.chars.each.each_cons(2) do |double|
    second_slices << double
  end
  doubles = second_slices.reject do |double|
    double.any?{ |num| num != tester}
  end
  if doubles.size > 0
    return 1
  else
    return 0
  end
end

p triple_double(12345, 12345) == 0
p triple_double(666789, 12345667) == 1
p triple_double(1222345, 12345) == 0
p triple_double(451999277, 41177722899) == 1