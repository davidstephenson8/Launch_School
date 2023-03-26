=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: a string
-  Output: the string with a space in front of it, increasing and going 10 times
---
**Problem Domain:**
---
**Implicit Requirements:**

Needs to be a string you can edit

---
**Clarifying Questions:**
1. 
2.
3.
---
**Mental Model:**
find a mutating method, call it repeatedly on a string while printing the output of each method call
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs:abcd
  -  Output:abcd 
   abcd
    abcd
     abcd
      abcd
       abcd
        abcd
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
--------------
I think just a string here?
Algorithm
---------
define string
method to add space to front of string
put string after space is added
method to add space front of string
put starying after space is added
repeat 8 more times 
end

=end

flinty = "The Flintstones Rock!"

10.times{puts flinty.prepend(" ")}
