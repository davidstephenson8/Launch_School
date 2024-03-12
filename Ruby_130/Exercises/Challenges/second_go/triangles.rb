class Triangle
  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3]
    raise ArgumentError if @sides.any? { |side| side <= 0 } || inequal?
  end

  def kind
    if @sides.uniq.size == 1
      "equilateral"
    elsif @sides.uniq.size == 2
      "isosceles"
    else
      "scalene"
    end
  end

  def inequal?
    total = @sides.sum
    @sides.each do |side|
      return true if total - side <= total / 2
    end
    false
  end
end
