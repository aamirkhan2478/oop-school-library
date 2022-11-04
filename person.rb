require './nameable'

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id, :rental

  def initialize(name, age = 'Unknown', parent_permission = 'true')
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rental = []
  end

  def add_rentals(rental)
    @rental << rental
    rental.person = self
  end

  def can_use_services?
    of_age? || parent_permission
  end

  def correct_name
    @name
  end

  private

  def of_age?
    @age >= 18
  end
end
