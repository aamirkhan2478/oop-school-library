require './person'

class Student < Person
  attr_reader :classroom

  def initialize(name, age, parent_permission, classroom)
    super(name, age, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.student.push(self) unless classroom.student.includes?(self)
  end
end
