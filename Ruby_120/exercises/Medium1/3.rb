class Student
  def initialize(name, year)
    @name = name
    @year = year
  end
end

class Graduate < Student
  def initialize(name, year, parking)
    super
    @parking = parking
  end
end

class Undergraduate < Student
  def initialize(name, year)
    super
  end
end
