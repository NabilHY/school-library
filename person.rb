require './decorator'

class Person < Nameable
  attr_accessor :id, :name, :age
  attr_accessor :rentals

  def initialize(age, name = 'Unknown')
    @age = age
    @name = name
    @id = id
    @parent_permission = true
    @rentals = []
    super()
  end

  def add_rental(rental)
    @rentals.push(rental)
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
