=begin
convert a digit passed in as octal to decimal. 

Rules
1. 8s and 9s passed in are seen as invalid and return 0
ALGO
return 0 if any characters aren't 0-7

define an octal object
in this object store a string representing the octal number
define a to_decimal instance method
  split up string into a set of characters
  initilize integers to iterate through the characters, mapping them to integers
  initialize octals to iterate through the integers, taking note of index, converting each to the integer multiplied by 8 to the power of the index of that integer
  sum octals, return the result
=end

class Octal
  def initialize(octal_string)
    @octal = octal_string
  end

  def to_decimal
    return 0 if @octal =~ /[^0-7]/
    integers = @octal.chars.map(&:to_i).reverse
    octal = integers.map.with_index do |int, index|
      int * (8 ** index) 
    end
    octal.sum
  end
   
end


