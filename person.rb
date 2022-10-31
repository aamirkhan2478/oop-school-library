class Person
  attr_writer :name, :age
  attr_reader :id, :name, :age

  def initialize(name, age = "Unknown", parent_permission = true)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  private def is_of_age?
    @age>=18
  end

  def can_use_services?
    is_of_age? || parent_permission
  end
end
