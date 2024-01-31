=begin
P
create a triangle object that:
  has a kind method that returns the triangle type based on its sides
  returns an ArgumentError when an invalid side configuration is passed in
    sides must be greater than zero and the sum of the lengths of 2 sides must be greater than the length of the third side
A
define a triangle class 
  with a constructor method that accepts 3 sides
    raise an error if a side is 0 or less, or if the side lengths aren't valid
  define a kind method
    the kind method returns a string based on the sides
    if all sides are equal
    if two sides are equal
    if no sides are equal
=end

class Triangle
  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3]
    raise ArgumentError if @sides.any? {|side| side <= 0}  
    raise ArgumentError unless valid_sides?(@sides) 
  end

  def kind
    if @sides.all? {|side| side == @sides[0]}
      return "equilateral"
    end

    @sides.each do |side|
      return "isosceles" if @sides.count(side) == 2
    end
  
    "scalene"
  end

  def valid_sides?(sides_array)
    return false if sides_array[0] >= sides_array[1] + sides_array[2]
    return false if sides_array[1] >= sides_array[0] + sides_array[2]
    return false if sides_array[2] >= sides_array[1] + sides_array[0]
    true
  end
end
