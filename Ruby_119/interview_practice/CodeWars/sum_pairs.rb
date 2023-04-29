=begin
Given a list of integers and a single sum value, return the first two values (parse from the left please) 
in order of appearance that add up to form the sum.

If there are two or more pairs with the required sum, the pair whose second element has the smallest index is the solution.

sum_pairs([11, 3, 7, 5],         10)
#              ^--^      3 + 7 = 10
== [3, 7]

sum_pairs([4, 3, 2, 3, 4],         6)
#          ^-----^         4 + 2 = 6, indices: 0, 2 *
#             ^-----^      3 + 3 = 6, indices: 1, 3
#                ^-----^   2 + 4 = 6, indices: 2, 4
#  * the correct answer is the pair whose second value has the smallest index
== [4, 2]

sum_pairs([0, 0, -2, 3], 2)
#  there are no pairs of values that can be added to produce 2.
== None/nil/undefined (Based on the language)

sum_pairs([10, 5, 2, 3, 7, 5],         10)
#              ^-----------^   5 + 5 = 10, indices: 1, 5
#                    ^--^      3 + 7 = 10, indices: 3, 4 *
#  * the correct answer is the pair whose second value has the smallest index
== [3, 7]
Negative numbers and duplicate numbers can and will appear.

NOTE: There will also be lists tested of lengths upwards of 10,000,000 elements. Be sure your code doesn't time out.
=begin
==============
Problem
------------------------
-  Inputs: array of integers, integer
-  Output: array of two integers
---
** Explicit Requirements **
1. elements from output array should be from list of integers and add up to given integer
2. start from the left and move to right
3. return nil if no numbers match the requirements
---
**Implicit Requirements** (if needed)
1.
2.
3.
---
Examples 
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: [1, 4, 8, 7, 3, 15], 8
  -  Output: [1, 7]
-  Example 2
  -  Inputs: [20, -13, 40], -7
  -  Output: nil
---
Data Structures
--------------
arrays
---
Scratch Pad/Working Area
--------------------------------------------------

maybe make a set of all possible pairs? It'll be important to keep them in order, but I think several things could do that

[[1, 4], [1, 8], [1, 7]... ]

Probably actually better to come from the right side. So something like 

[3, 15], [7, 15] 

Actually I think that's wrong too. Something like this

[1, 4], [1, 8], [4, 8], [1, 7], [4, 7], [8, 7]

And I don't think that I want to create every possible pair this way first, I want to stop checking 
once I find my answer, so I'll need to create the pairs and then check them right after they're created. 
--------------------------------------------------
Algorithm

create pairs from the list of integers
  start from end index and match all numbers before it in array
  increment end index and match two pairs
  increment end index and match three pairs
  as pairs are created, check to see if they sum to the desired integer
  return a pair if it's equivalent to the integer
---------

=end

def sum_pairs(ints, s)
  pair = []
  ints.each_with_index do |__, end_index|
    next if end_index == 0
    start_index = 0
    loop do 
      pair = [ints[start_index], ints[end_index]]
      break if pair.sum == s 
      break if start_index == end_index - 1
      start_index += 1
    end
    break if pair.sum == s
  end
  if pair.sum == s
    pair
  else
    nil
  end
end

p sum_pairs([1, 4, 8, 7, 3, 15], 8)
p sum_pairs([20, -13, 40], 8)