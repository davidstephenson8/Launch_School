=begin
==============
Problem
implement a bubble sort algorithm. A bubble sort algorithm is performed by checking to see if each element of the array is 
greater than it's neighbor. If it is, the elements are swapped, if not, the algorithm moves on to the next element in the 
array

------------------------
-  Inputs: array
-  Output: sorted array
---
** Rules **
Explicit
1. we'll sort in place
2. array will be sorted from least to greatest
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
  -  Inputs: 
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


---
Algorithm
---------
start a loop
  initialize swap value to false
  iterate through the array
    compare current value to the value right after it
    if it's greater, swap the two values
    change the swap value to true
  return the array is swap value is false
=end

def bubble_sort!(array)
  loop do
    swap = false
    array.each_with_index do |num, index|
      next if index == array.size - 1
      if num > array[index + 1]
        array[index] = array[index + 1]
        array[index + 1] = num
        swap = true
      end
    end
    break if swap == false
  end
  array
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)