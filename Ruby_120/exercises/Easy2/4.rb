class Transform
  attr_reader :uppercase, :lowercase

  def initialize(string)
    @string = string
  end

  def uppercase
    @string.upcase
  end

  def lowercase
    @string.lowercase
  end
end

my_data = Transform.new('abc')
puts my_data.uppercase
puts Transform.lowercase('XYZ')