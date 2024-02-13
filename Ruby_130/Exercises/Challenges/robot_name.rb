
class Robot
  attr_reader :name
  
  @@names = []

  def initialize
    @name = set_name
  end

  def reset
    @name = set_name
  end

  private
  attr_writer :name

  def set_name
    @name = "#{rand(65..90).chr}#{rand(65..90).chr}#{rand(0..9)}#{rand(0..9)}#{rand(0..9)}"
    until !@@names.include?(@name)
      @name = "#{rand(65..90).chr}#{rand(65..90).chr}#{rand(0..9)}#{rand(0..9)}#{rand(0..9)}"
    end
    @@names << name
    name
  end
end

a = Robot.new
p a.name