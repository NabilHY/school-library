require_relative 'person'

class Student < Person 
    def initialize(classroom)
        @classroom = classroom
    end

    def play_hockey
        return "'¯\(ツ)/¯'"
    end

end