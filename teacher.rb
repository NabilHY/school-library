require './person'

class Teacher < Person
  attr_reader :ps

  def initialize(age, name, specialization, id)
    super(age, name, id)
    @specialization = specialization
    @ps = 'Teacher'
  end

  def can_use_services?
    true
  end
end
