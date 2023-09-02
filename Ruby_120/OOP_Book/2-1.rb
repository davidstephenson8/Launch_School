class MyCar
  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def shut_down
    @current_speed = 0
    puts "Let's park this bad boy!"
  end

  attr_accessor :color
  attr_reader :year
  attr_reader :model

  def spray_paint(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end
end

accord = MyCar.new(2007, "Honda Accord", "Grey")
p accord.color
p accord.year
p accord.model
accord.spray_paint("yellow")
p accord.color
