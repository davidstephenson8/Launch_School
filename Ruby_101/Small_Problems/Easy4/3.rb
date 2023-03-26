=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: an integer
-  Output: a boolean
---
**Implicit Requirements:**
1. ?? 
2. ??
---
**Clarifying Questions:**
1. what do I do if the input isn't an integer?
2. How do I handle no input?
3. 
---
**Mental Model:**
1. I think that I'll set up some loops that divie 
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

- array
--------------
---
Algorithm

if the year divided by 4 returns no remainder returns true
if the year divided by 100 returns no remainder
  if the year divided by 400 returns no remainder
  true
  else false
  
---------
Code
----
=end

def leap_year?(year)
  if year % 400 == 0
    return true
  elsif year % 100 == 0 && year % 400 == 0 
    return true
  elsif year % 100 == 0
    return false
  elsif year % 4 == 0
    return true
  else
    false
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true

p leap_year?(100)
p leap_year?(400)
p leap_year?(4)
p leap_year?(2016)
p leap_year?(3)