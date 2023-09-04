module Offroadable
  def offroadable
    "This car can go offroad"
  end
end

class Vehicle
  def miles_per_gallon(miles, gallon)
    "your car is getting #{miles / gallon} miles to the gallon!"
  end

  def to_s
    "My vehicle is a #{color} #{year} #{model}"
  end

  @@number_of_vehicles = 0

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
    @@number_of_vehicles += 1
  end

  def number_of_vehicles
    "the number of vehicles created is #{@@number_of_vehicles}"
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

  def miles_per_gallon(miles, gallon)
    "your car is getting #{miles / gallon} miles to the gallon!"
  end

  def to_s
    "My vehicle is a #{color} #{year} #{model}"
  end

  def age 
    "your #{model} is #{how_old} years old"
  end
  
  private

  def how_old
    Time.now.year - year
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4
end

class MyTruck < Vehicle
  NUMBER_OF_DOORS = 2
  include Offroadable
end

accord = MyCar.new(2007, "Honda Accord", "Grey")
p accord.color
p accord.year
p accord.model
accord.spray_paint("yellow")
p accord.color
p accord.miles_per_gallon(400, 10)
puts accord
puts MyCar.ancestors
puts MyTruck.ancestors
puts Vehicle.ancestors
p accord.age
