def fizzbuzz(a, b)
  a.upto(b-1) do |num|
    if num % 3 == 0 && num % 5 == 0
      p "FizzBuzz"
    elsif num % 3  == 0
      p "Fizz"
    elsif num % 5 == 0
      p "Buzz"
    else
      p num 
    end
  end
  if b % 3 == 0 && b % 5 == 0
    return "FizzBuzz"
  elsif b % 3  == 0
    return "Fizz"
  elsif b % 5 == 0
    return "Buzz"
  else
    return b 
  end
end

p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz