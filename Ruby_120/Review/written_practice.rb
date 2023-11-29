# 1

# class Person
#   attr_reader :name
  
#   def set_name
#     @name = 'Bob'
#   end
# end

# bob = Person.new
# p bob.name

# What is output and why? What does this demonstrate about instance variables that differentiates them from local variables?

# nil is output because the #set_name method wasn't called. This shows that instance variables are initialized but not assigned
# to a particular value when a class is initialized. These variables are then assigned as the methods that define them are
# initialized. Local variables are more black and white, if the code that defines them is run, they're initialized, if not, 
# they're not. 

# 2 
# module Swimmable
#   def enable_swimming
#     @can_swim = true
#   end
# end

# class Dog
#   include Swimmable

#   def swim
#     "swimming!" if @can_swim
#   end
# end

# teddy = Dog.new
# p teddy.swim

# What is output and why? What does this demonstrate about instance variables?

# nil is output again because the #enable_swimming method wasn't called on teddy. As a result, the @can_swim instance variable
# wasn't initialized to true and nothing is output when the swim method is called. Again, no error was thrown for an undefined
# variable because there's a nil value, so the if statement can be evaluated, but nil is returned because there's no explicit
# return value for a falsy value of @can_swim

# 3 

module Describable
  def describe_shape
    "I am a #{self.class} and have #{SIDES} sides."
  end
end

class Shape
  include Describable

  def self.sides
    self::SIDES
  end
  
  def sides
    self.class::SIDES
  end
end

class Quadrilateral < Shape
  SIDES = 4
end

class Square < Quadrilateral; end

p Square.sides 
p Square.new.sides 
p Square.new.describe_shape 


# What is output and why? What does this demonstrate about constant scope? 

# the first two lines output 4 and the last line outputs an ``uninitialized constant`` error. This is showing lexical and 
# inherited scope for constants. The first method calls the class method #sides and uses the constant lookup operator
# to look for the SIDES constant in Square. Because it doesn't find it, it looks in the parent class, Quadrilateral and
# finds and returns it. THe second method returns 4 because it's looking for the SIDES constant in the class of whatever
# object is calling it.  Because #describe_shape is defined in a module, to look up the 

# What does `self` refer to in each of the 3 methods above? 

# self in the first method refers to the calling object. Self in the second method refers to the class. Self in the last method
# refers to the calling object. 

class AnimalClass
  attr_accessor :name, :animals
  
  def initialize(name)
    @name = name
    @animals = []
  end
  
  def <<(animal)
    animals << animal
  end
  
  def +(other_class)
    new_animals = animals + other_class.animals
    new_class = AnimalClass.new("#{self.name} & #{other_class.name}")
    new_class << new_animals
    new_class
  end
end

class Animal
  attr_reader :name
  
  def initialize(name)
    @name = name
  end
end

mammals = AnimalClass.new('Mammals')
mammals << Animal.new('Human')
mammals << Animal.new('Dog')
mammals << Animal.new('Cat')

birds = AnimalClass.new('Birds')
birds << Animal.new('Eagle')
birds << Animal.new('Blue Jay')
birds << Animal.new('Penguin')

some_animal_classes = mammals + birds

p some_animal_classes 

# What is output? Is this what we would expect when using `AnimalClass#+`? If not, how could we adjust the implementation 
# of `AnimalClass#+` to be more in line with what we'd expect the method to return?

# A list of all of the animals in both classes is returned. When adding two classes, I'd expect there to be a merge
# of the actual classes, not the contents of the classes. So #+ needs to create a new class and add the animal lists together.
# I'm thinking something like this? 

def +(other_class)
  new_animals = animals + other_class.animals
  new_class = AnimalClass.new("#{self.name} & #{other_class.name}")
  new_class << new_animals
  new_class
end