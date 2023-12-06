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

# module Describable
#   def describe_shape
#     "I am a #{self.class} and have #{SIDES} sides."
#   end
# end

# class Shape
#   include Describable

#   def self.sides
#     self::SIDES
#   end
  
#   def sides
#     self.class::SIDES
#   end
# end

# class Quadrilateral < Shape
#   SIDES = 4
# end

# class Square < Quadrilateral; end

# p Square.sides 
# p Square.new.sides 
# p Square.new.describe_shape 


# What is output and why? What does this demonstrate about constant scope? 

# the first two lines output 4 and the last line outputs an ``uninitialized constant`` error. This is showing lexical and 
# inherited scope for constants. The first method calls the class method #sides and uses the constant lookup operator
# to look for the SIDES constant in Square. Because it doesn't find it, it looks in the parent class, Quadrilateral and
# finds and returns it. THe second method returns 4 because it's looking for the SIDES constant in the class of whatever
# object is calling it.  Because #describe_shape is defined in a module, to look up the 

# What does `self` refer to in each of the 3 methods above? 

# self in the first method refers to the calling object. Self in the second method refers to the class. Self in the last method
# refers to the calling object. 

# class AnimalClass
#   attr_accessor :name, :animals
  
#   def initialize(name)
#     @name = name
#     @animals = []
#   end
  
#   def <<(animal)
#     animals << animal
#   end
  
#   def +(other_class)
#     new_animals = animals + other_class.animals
#     new_class = AnimalClass.new("#{self.name} & #{other_class.name}")
#     new_class << new_animals
#     new_class
#   end
# end

# class Animal
#   attr_reader :name
  
#   def initialize(name)
#     @name = name
#   end
# end

# mammals = AnimalClass.new('Mammals')
# mammals << Animal.new('Human')
# mammals << Animal.new('Dog')
# mammals << Animal.new('Cat')

# birds = AnimalClass.new('Birds')
# birds << Animal.new('Eagle')
# birds << Animal.new('Blue Jay')
# birds << Animal.new('Penguin')

# some_animal_classes = mammals + birds

# p some_animal_classes 

# What is output? Is this what we would expect when using `AnimalClass#+`? If not, how could we adjust the implementation 
# of `AnimalClass#+` to be more in line with what we'd expect the method to return?

# A list of all of the animals in both classes is returned. When adding two classes, I'd expect there to be a merge
# of the actual classes, not the contents of the classes. So #+ needs to create a new class and add the animal lists together.
# I'm thinking something like this? 

# def +(other_class)
#   new_animals = animals + other_class.animals
#   new_class = AnimalClass.new("#{self.name} & #{other_class.name}")
#   new_class << new_animals
#   new_class
# end

# 5
# class GoodDog
#   attr_accessor :name, :height, :weight

#   def initialize(n, h, w)
#     @name = n
#     @height = h
#     @weight = w
#   end

#   def change_info(n, h, w)
#     name = n
#     height = h
#     weight = w
#   end

#   def info
#     "#{name} weighs #{weight} and is #{height} tall."
#   end
# end


# sparky = GoodDog.new('Spartacus', '12 inches', '10 lbs') 
# sparky.change_info('Spartacus', '24 inches', '45 lbs')
# puts sparky.info 
# => Spartacus weighs 10 lbs and is 12 inches tall.


# We expect the code above to output `”Spartacus weighs 45 lbs and is 24 inches tall.”` Why does our `change_info` 
# method not work as expected?

# Because Ruby assumes that you're assigning a local variable here, not reassigning an instance variable. Typically when
# a write method is defined, Ruby calls that, but if there's a choice between an write method and creating a local variable
# Ruby decides to create a local variable first. To change this, we can make the calls to the write methods explicit by
# calling the methods on self in each line of ``change_info``. 

# 6.
# class Person
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end
  
#   def change_name
#     name = name.upcase
#   end
# end

# bob = Person.new('Bob')
# p bob.name 
# bob.change_name
# p bob.name


# In the code above, we hope to output `'BOB'` on `line 16`. Instead, we raise an error. Why? 
# We raise an error because Ruby, again, is attempting to create a local variable because it defaults to creating a 
# local variable over accessing the instance variable with an write method with this syntax. As a result, within the
# change_name method, Ruby attempts to access the local variable name which hasn't been initialized yet. The upcase
# method doesn't work on `nil` so it returns the error message we see. 

# How could we adjust this code to output `'BOB'`? 
# Make an explicit call to the instance variable  within the #change_name method. This will allow us to access the value 
# stored in the instance variable, and then the name in the second part of the assignment statement won't attempt to access
# a local name variable, but it'll call the name reader method, returning @name, which will allow us to modify it.

# def change_name
#   @name = name.upcase
# end

# Something like this could also work

# def change_name
#   name.upcase!
# end

# 7.
# class Vehicle
#   @@wheels = 4

#   def self.wheels
#     @@wheels
#   end
# end

# p Vehicle.wheels                             

# class Motorcycle < Vehicle
#   @@wheels = 2
# end

# p Motorcycle.wheels                           
# p Vehicle.wheels                              

# class Car < Vehicle; end

# p Vehicle.wheels
# p Motorcycle.wheels                           
# p Car.wheels     


# What does the code above output, and why? What does this demonstrate about class variables, and why we should avoid 
# using class variables when working with inheritance?
=begin
It shows that class variables modified in subclasses of a parent class are modified for all instances of that class. Both the
parent class and the related sibling classes for the subclass are all affected. THis is showed in the last 3 lines where 
``Vehicle``, ``Motorcycle`` and ``Car`` all output 2.   
=end

# 8. 
# class Animal
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end
# end

# class GoodDog < Animal
#   def initialize(color)
#     super
#     @color = color
#   end
# end

# bruno = GoodDog.new("brown")       
# p bruno


# What is output and why? What does this demonstrate about `super`?

=begin
`super` calls the initialize method for the superclass and passes it the argument passed to it when the new GoodDog object is 
initialized. This argument is assigned to ``name``, which in turn is assigned to ``@name``.
=end

#9.
# class Animal
#   def initialize
#   end
# end

# class Bear < Animal
#   def initialize(color)
#     super
#     @color = color
#   end
# end

# bear = Bear.new("black")        


# What is output and why? What does this demonstrate about `super`? 

# This shows that `super` will pass at least one parameter to the method in the parent class, even if the parent class' method
# doesn't call for a parameter. 

#10

# module Walkable
#   def walk
#     "I'm walking."
#   end
# end

# module Swimmable
#   def swim
#     "I'm swimming."
#   end
# end

# module Climbable
#   def climb
#     "I'm climbing."
#   end
# end

# module Danceable
#   def dance
#     "I'm dancing."
#   end
# end

# class Animal
#   include Walkable

#   def speak
#     "I'm an animal, and I speak!"
#   end
# end

# module GoodAnimals
#   include Climbable

#   class GoodDog < Animal
#     include Swimmable
#     include Danceable
#   end
  
#   class GoodCat < Animal; end
# end

# good_dog = GoodAnimals::GoodDog.new
# p good_dog.walk
# p GoodAnimals::GoodDog.ancestors

# What is the method lookup path used when invoking `#walk` on `good_dog`?

=begin
It first looks for the method in the lexical scope of GoodDog. It doesn't find it in GoodDog, so it moves to the Animal parent
class. The Walkable module is included there, so it accesses the walk method at that point.
=end

#11
class Animal
  def eat
    puts "I eat."
  end
end

class Fish < Animal
  def eat
    puts "I eat plankton."
  end
end

class Dog < Animal
  def eat
     puts "I eat kibble."
  end
end

def feed_animal(animal)
  animal.eat
end

array_of_animals = [Animal.new, Fish.new, Dog.new]

array_of_animals.each do |animal|
  feed_animal(animal)
end


# What is output and why? How does this code demonstrate polymorphism? 

# All of the different classes respond to the same method call. Polymorphism is when classes respond to the same method call
# in ways appropriate to the class. So the fact that each class also responds differently further illustrates polymorphism.
