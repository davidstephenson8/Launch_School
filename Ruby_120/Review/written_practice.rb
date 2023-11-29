# 1

class Person
  attr_reader :name
  
  def set_name
    @name = 'Bob'
  end
end

bob = Person.new
p bob.name

# What is output and why? What does this demonstrate about instance variables that differentiates them from local variables?

# nil is output because the #set_name method wasn't called. This shows that instance variables are initialized but not assigned
# to a particular value when a class is initialized. These variables are then assigned as the methods that define them are
# initialized. Local variables are more black and white, if the code that defines them is run, they're initialized, if not, 
# they're not. 