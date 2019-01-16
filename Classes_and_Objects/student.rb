class Student

  def initialize(n, g)
    @name = n
    @grade = g
  end

  def better_grade_than?(other)
    self.grade < other.grade
  end

  protected

  def grade
    @grade
  end
end

joe = Student.new('Joe', 94)
bob = Student.new('Bob', 100)

puts joe.better_grade_than?(bob)
