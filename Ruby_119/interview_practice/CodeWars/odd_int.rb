=begin
Given an array of integers, find the one that appears an odd number of times.

There will always be only one integer that appears an odd number of times.

Examples

[7] should return 7, because it occurs 1 time (which is odd).
[0] should return 0, because it occurs 1 time (which is odd).
[1,1,2] should return 2, because it occurs 1 time (which is odd).
[0,1,0,1,0] should return 0, because it occurs 3 times (which is odd).
[1,2,2,3,3,3,4,3,3,3,2,2,1] should return 4, because it appears 1 time (which is odd).
P
i: array of integers
o: integer
explicit rule
- output integer should be the one that appears an odd number of times
E
[0, 1, 0, 1, 0]
 1  1  2  2  3  ->
D

A
iterate through the array
  return a count of how many times each integer appears
  return the integer if the count is odd


=end

def find_it(seq)
  seq.each do |num|
    return num if seq.count(num).odd?
  end
end

p find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])