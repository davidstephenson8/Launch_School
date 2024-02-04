=begin
given a natural number and a set of other numbers, return the sum of all of the multiples of the numbers in the set that are less than the first number.
If no set is provided, use a default set of 3 and 5. 

ALGO
The only information stored in an instance of the class is the set. The `to` method provides the number that the range should go up to
initialize an empty array to multiples
for each element in the set, iterate through a range from 1 to the given number
  if one of the numbers in the range is evenly divisible by the element, add that number to multiples
sum multiples, return result  
=end

class SumOfMultiples
  def initialize(*integers)
    @set = integers
  end

  def self.to(number)
    multiples = []
    set = [3, 5]
    set.each do |element|
      (1...number).each do |num|
        multiples << num if num % element == 0
      end
    end
    multiples.uniq.sum
  end

  def to(number)
    multiples = []
    @set.each do |element|
      (1...number).each do |num|
        multiples << num if num % element == 0
      end
    end
    multiples.uniq.sum
  end

end