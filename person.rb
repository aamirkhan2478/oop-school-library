class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(name, age = 'Unknown', parent_permission = 'true')
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    is_of_age? || parent_permission
  end

  private

  def of_age?
    @age >= 18
  end
end
