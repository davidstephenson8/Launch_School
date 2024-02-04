=begin
classify a number as perfect, abundant or deficient.
Rules
1. a number is perfect when its divisors sum to be the number
2. a number is deficient when its divisors sum to less than the number
3. a number is abundant when its divisors sum to more than the number
4. a negative number should return a standard error
MAIN ALGO
create a class, PerfectNumber that stores a number

define a classify method
  raise a StandardError when the number is less than 1
  get an array of divisors from helper method
  sum divisors, compare to number
  return perfect if sum and number are the same
  return deficient when sum is smaller than number
  return abundant when divisors are larger than the number
end

HELPER ALGO
pass in number
initialize `results` to an empty array
iterate thruogh a range from 1 to the number divided by two
  add a divisor to results if it evenly divides into the bigger number
return results

=end

class PerfectNumber

  def self.classify(number)
    raise StandardError if number < 1 
    sum = self.divisors(number).sum
    if sum == number
      "perfect"
    elsif sum > number
      "abundant"
    elsif sum < number
      "deficient"
    end
  end

  def self.divisors(number)
    results = []
    (1..number/2).each do |num|
      results << num if number % num == 0
    end
    results
  end
end

p PerfectNumber.classify(6)