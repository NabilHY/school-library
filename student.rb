require './person'

class Student < Person
  attr_reader :classroom, :ps

  def initialize(age, name, id, parent_permission)
    super(age, name, id)
    @parent_permission = parent_permission
    @classroom = classroom
    @ps = 'Student'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hockey
    "'¯\(ツ)/¯'"
  end
end
