class Classroom
  attr_accessor :label
  attr_accessor :students

  def initialize(label)
    @label = label
    @students = []
  end

  def add_student(students)
    @students << students
    students.classroom = self
  end
end
