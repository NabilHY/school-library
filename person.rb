class Person
    attr_accessor :id, :name, :age
    def initialize(age)
        @id = id
        @name = 'Unknown'
        @age = age
        @parent_permission = true
    end

    private

    def is_of_age?
        if(@age >= 18)
            return true
        else
            return false
        end
    end

    public 
    
    def can_use_services? 
        if(is_of_age && @parent_permission)
            return true
        else
            return false
        end
end
