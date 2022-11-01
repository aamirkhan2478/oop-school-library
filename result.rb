require "./person"
require "./capitalize_decorator"
require "./trimmer_decorator"

person = Person.new("maximilianus",22)
puts person.correct_name
capitalizedPerson = CapitalizeDecorator.new(person)
puts capitalizedPerson.correct_name
capitalizedTrimmedPerson = TrimmerDecorator.new(capitalizedPerson)
puts capitalizedTrimmedPerson.correct_name
