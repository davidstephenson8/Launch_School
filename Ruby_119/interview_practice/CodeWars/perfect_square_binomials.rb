=begin
P
given a number range that can be in front of any element of a trinomal, return the number of trinomials that are 
perfect squares
E
x 2x2 + 1
(x+1)2
x + 6x + 9
(x+3)
x2 + 4x + 4
(2x + 1)
4x2 + 4x + 1
3x + 2
9x2 + 12 + 4
D
arrays
A
HELPER METHOD
`square`
  take integer
  1..integer 
    do any numbers squared equal integer
  return boolean

generate an array with subarrays of possibilites for each integer preceeding each number
  start a series of interconnected loops, each to iterate a number of times equal to n
  initialize `a` `b` `c` to 0
  initialize subarrays to []
  iterate through a range of integers from 0..n
    assign a to int
    add an array with a b and c to subarrays
    iterate through a range of integers from 0..n
      assign b to int
      add an array with a b and c to subarrays
      iterate through a range of integers form 0..n
        assign c to into
        add an array with a b and c to subarrays     
initalize `squares` to a selection of `subarrays` where the following are true
a is a square
2(a + c) = b
c is a square
return size of `squares`
=end

[]

p square(1)

# p square(8)
# p square(9)
# p square(16)
# p square(17)

def perfect_square(int)
  a = 1
  b = 1
  c = 1
  subarrays = []
  (1..int).each do |num|
    a = num
    subarrays << [a, b, c]
    (1..int).each do |num|
      b = num
      subarrays << [a, b, c]
      (1..int).each do |num|
        c = num
        subarrays << [a, b, c]
      end
    end
  end
  squares = subarrays.select do |subarray|
    subarray[1] / 2 == subarray[0] * subarray[2] && square(subarray[0]) && square(subarray[2])
  end
  p squares
end

perfect_square(3)
perfect_square(6)
perfect_square(9)
#perfect_square(21)

# 2x^2 + 4x + 2
#x^2 4x 4
# (x + 2)



