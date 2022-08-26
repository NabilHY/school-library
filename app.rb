class App 
    
    def initialize(option)
        @option = option
    end

    def options(option)
        case option
        when 1
            puts "All Books"
        when 2
            puts "All People"
        when 3
            puts "Create a Person"
        when 4
            puts "Create a Book"
        when 5
            puts "Create a Rental"
        when 6
            puts "All Rentals for a specific person"
        when 7
            Exit
        else
            puts "Invalid option"
        end
end

