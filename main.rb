#!/usr/bin/env ruby

require './app'

Appl = App.new

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
            arr_length = Appl.books.length
            case arr_length
                when 0
                    puts "There are no books in the library"
                else
                    puts "Here are all the books in the library:"
                    Appl.list_books
            end
            sleep(2)
            main()
        when 2
            arr_length = Appl.person.length
            case arr_length
                when 0
                    puts "There are no people in the library"
                else
                    puts "Here are all the people in the library:"
                    Appl.list_people
            end
        when 3
            puts "Do you want to create a student (1) or a teacher (2)? [Input the number]"
            input = gets.chomp.to_i
                case input
                    when 1
                        print "Age:"
                        age = gets.chomp.to_i
                        print "Name:"
                        name = gets.chomp.capitalize!
                        print "Has parent permission? [Y/N]:"
                        boo = gets.chomp
                        if boo == "Y" || boo == "y"
                            parent_permission = true
                        else
                            parent_permission = false
                        end
                        print "ID:"
                        id = gets.chomp.to_i
                        Appl.add_student(age, name, id, parent_permission)
                        print "Student created successfully!"
                        sleep(2)
                        main()
                    when 2
                        print "Age:"
                        age = gets.chomp.to_i
                        print "Name:"
                        name = gets.chomp.capitalize!
                        print "Specialization:"
                        specialization = gets.chomp.capitalize!
                        print "ID:"
                        id = gets.chomp.to_i
                        Appl.add_teacher(age, name, specialization, id)
                        print "Person created successfully!"
                        sleep(2)
                        main()
                end
        when 4
            print "Title:"
            title = gets.chomp.capitalize!
            print "Author:"
            author = gets.chomp.capatalize
            Appl.add_book(title, author)
            puts "Book created successfully!"
            sleep(2)
            main()
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