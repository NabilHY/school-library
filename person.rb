class Person
  attr_accessor :id, :name, :age

  def initialize(age)
    @id = id
    @name = 'Unknown'
    @age = age
    @parent_permission = true
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
