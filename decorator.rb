class Nameable
    def correct_name
        raise NotImplementedError
    end
end

class Decorator < Nameable
    def initialize(nameable)
        super()
        @nameable = nameable
    end

    def correct_name
        @namable.correct_name
    end
end

class CapitalizeDecorator < Decorator
    def correct_name
        @nameable.correct_name.capitalize
    end
end

class TrimmerDecorator < Decorator
    def correct_name
        name = @nameable.correct_name
        if name.length > 10
            name = name[0..9]
        else
            name
        end
    end
end