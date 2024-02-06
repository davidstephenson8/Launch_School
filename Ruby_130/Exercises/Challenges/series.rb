=begin
take a string of digits, 
=end

class Series
  def initialize(num)
    @number = num
  end

  def slices(slice)
    raise ArgumentError if slice > @number.size
    slices = @number.chars.map(&:to_i).each_cons(slice)
    slices.to_a
  end
end