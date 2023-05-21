=begin
==============
Problem

make a diamond in an n by n grid where n is an odd integer supplied to the method
------------------------
-  Inputs: an odd integer
-  Output: a diamond with its middle row the size of the odd integer
---
** Rules **
Explicit
1. 
2. 
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
  -  Inputs: 5
  -  Output:  *  
             *** 
            *****
             ***
              * 
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
make a string of empty charaters of size int, initialize `string` to this string
find the index of the middle character, store it in middle
iterate through a range of numbers from 0 to middle
  for each number, change the value in the string at middle - number and middle plus number to *
  display string
then iterate down from int/2 - 1 to 0
  change the value in string at index middle +/- number to " "
  display string
=end




def diamond(int)
  string = " " * int
  middle = int / 2
  (0..middle).each do |num|
    string[middle - num] = "*"
    string[middle + num] = "*"
    puts string
  end
  middle.downto(1) do |num|
    string[middle - num] = " "
    string[middle + num] = " "
    puts string
  end
end

diamond(5)
diamond(15)