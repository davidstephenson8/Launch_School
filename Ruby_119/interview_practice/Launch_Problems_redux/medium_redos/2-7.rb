=begin
==============
Problem
given a year, write a method that returns the number of Friday the 13ths in the given year

------------------------
-  Inputs: integer representing year
-  Output: integer (number of Friday the 13ths)
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
  -  Inputs: 2015
  -  Output: 3
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
initialize a `friday` variable to 0
iterate over the integers from 1 to 12
  insert each of these integers into a date object, with the day set as 13 and the year as the year given 
  by the input to the problem. set to variable `date`
  check to see if the date is a friday or not
    if it is, add 1 to friday counter
=end

require "Date"

def friday_13th(int)
  fridays = 0
  1.upto(12) do |month|
    date = Date.new(int, month, 13)
    if date.friday?
      fridays += 1
    end
  end
  fridays
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2