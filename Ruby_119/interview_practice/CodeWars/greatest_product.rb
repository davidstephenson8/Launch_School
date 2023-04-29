=begin
P
inputs: string of digits
outputs: integer
explicit rules: 
- input string always has more than 5 digits
- can't pick random digits from string, must be consecutive digits
E
92494737828244222221111111532909999
D
i: string
w: array
o: integer
A
convert the input into an array of characters
convert each of the characters into the corresponding integer value
initialize a greatest product value to be equal to the product of the first five integers
iterate through the array
  take slices of the array that are 5 numbers long from current index to index 5 away
  calculate the product of the slice and store it in a current_product variable
  if the current product is greater than current greatest_product variable, reassign greatest_product to current product
    stop taking slices when index is 5 away from the end
return greatest_product
C
=end

def greatest_product(n)
  digits = n.chars.map(&:to_i)
  greatest_product = digits[0..4].inject(:*)
  digits.each_with_index do |num, index|
    current_slice = digits[index..index + 4]
    current_product = current_slice.inject(:*)
    if current_product > greatest_product
      greatest_product = current_product
    end
    break if index == digits.size - 5
  end
greatest_product
end

p greatest_product("123834539327238239583")