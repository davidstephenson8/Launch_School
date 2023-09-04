class Student(n, g)
  name = n

  def better_grade_than(other_grade)
    grade > other_grade
  end
  
  private
  
  grade = g
end