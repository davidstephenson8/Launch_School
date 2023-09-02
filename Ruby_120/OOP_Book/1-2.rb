=begin
a module allows for one method to be shared across multiple different kinds of objects via mixins. You can include modules
by using the include keyword

module Bite
  def bite(person)
    person = person.chars.pop
    person.join
  end
end

class BadDog
  include Bite
end