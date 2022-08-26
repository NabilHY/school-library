require './decorator'

class Person < Nameable
  attr_accessor :id, :name, :age, :rentals

  def initialize(age, name = 'Unknown', id)
    @age = age
    @name = name
    @id = id
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
