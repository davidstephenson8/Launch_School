class Cat
COLOR = "tabby"

  def initialize(name)
    @name = name
  end

  def greet
    puts "I'm #{@name}! I'm a #{COLOR} cat."
  end
end

kitty = Cat.new('Sophie')
kitty.greet