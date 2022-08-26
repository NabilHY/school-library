#!/usr/bin/env ruby

def main
    puts "Welcome to School Library App!"
    puts "Please choose an option by entering a number:"
    puts "1 - List all books"
    puts "2 - List all people"
    puts "3 - Create a person"
    puts "4 - Create a book"
    puts "5 - Create a rental"
    puts "6 - List all rentals for a specific person"
    puts "7 - Exit"
    option = gets.chomp.to_i
    selected(option)
end

def selected(option)
    case option
        when 1
            puts "All Books"
        when 2
            puts "All People"
        when 3
            puts "Do you want to create a student (1) or a teacher (2)? [Input the number]"
            input = gets.chomp.to_i
                case input
                    when 1
                        print "Age:"
                        age = gets.chomp.to_i
                        print "Name:"
                        name = gets.chomp.to_i
                        print "Has parent permission? [Y/N]:"
                        input = gets.chomp.to_i
                        print "Student created successfully!"
                    when 2
                        print "Age:"
                        age = gets.chomp.to_i
                        print "Name:"
                        name = gets.chomp.to_i
                        print "Specialization:"
                        specialization = gets.chomp
                        print "Person created successfully!"
                end
        when 4
            print "Title:"
            title = gets.chomp
            print "Author:"
            author = gets.chomp
            print "Book created successfully!"
        when 5
            print "Select a book from the following list by number"
        when 6
            print "ID of person"
            id = gets.chomp.to_i
        when 7
            Exit
        else
            puts "Invalid option"
    end
end

main()