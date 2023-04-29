=begin
P 
i - integer
o - sum of all multiples of 3 or 5 below integer
explicit rules
  - sum all of the integers that are multiples of 3 or 5 below the given integer
  - if the number is negative, return 0
  - if the number is a multiple of 3 and 5, only count it once
implicit rules
  - 
E
20
[3, 5, 6, 9, 10, 12, 15, 18].sum == 78
D
i: integer
w: array
o: integer
A
initialize an empty array 'multiples'
iterate through a range from 1 to the input integer
  add each integer that's divisible by 3 or 5 to an array
  remove any duplicate values from this array
sum the array of multiples, return this value
C
=end

def solution(number)
  multiples = []
  (1...number).each do |int|
    if int % 3 == 0 || int % 5 == 0
      multiples << int
    end
  end
  multiples.sum
end 

p solution(20)