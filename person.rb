require './decorator'

class Person < Nameable
  attr_accessor :id, :name, :age

  def initialize(age, name = 'Unknown')
    @age = age
    @name = name
    @id = id
    @parent_permission = true
    super()
  end

  def correct_name
    @name
  end

  private

  def of_age?
    @age >= 18
  end

  public

  def can_use_services?
    if of_age? && @parent_permission
      true
    else
      false
    end
  end
end

person = Person.new(22, 'maximilianus')
person.correct_name
capitalizedPerson = CapitalizeDecorator.new(person)
capitalizedPerson.correct_name
capitalizedTrimmedPerson = TrimmerDecorator.new(capitalizedPerson)
capitalizedTrimmedPerson.correct_name