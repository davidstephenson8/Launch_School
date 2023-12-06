class Person
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def ==(other)
    name.object_id == other.name.object_id
  end
end

al = Person.new('Alexander')
alex = Person.new('Alexander')
p al == alex # => true