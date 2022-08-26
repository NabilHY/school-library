require './book'
require './classroom'
require './person'
require './rental'
require './student'
require './teacher'

class App 

    attr_reader :books, :person, :rentals

    def initialize
        @books = []
        @person = []
        @rentals = []
    end

    def list_books 
        @books.each do |book|
            puts "Title: #{book.title}, Author: #{book.author}"
        end
    end

    def list_books_by_index
        @books.each_with_index do |book, i| 
            puts "#{i}) Title: #{book.title}, Author: #{book.author}"
        end
    end

    def list_persons_by_index
        @person.each_with_index do |person, i|
            puts "#{i}) Name: #{person.name}, Age: #{person.age}"
        end
    end

    def add_book(title, author)
        book = Book.new(title, author)
        @books.push(book)
    end

    def list_people
        @person.each do |pers| puts "[#{pers.ps}] Name: #{pers.name}, ID: #{pers.id}, Age: #{pers.age}"
        end
    end

    def add_teacher(age, name, id, specialization)
        teacher = Teacher.new(name, age, id, specialization)
        @person.push(teacher)
    end

    def add_student(age, name, id,  parent_permission)
        student = Student.new(age, name, id,  parent_permission)
        @person.push(student)
    end

    def add_rental(rental)
        @rentals.push(rental)
    end
    
    def rentals
        @rentals
    end

    def list_rentals_for_person(person)
        @rentals.each do |rental|
            if rental.person == person
                puts "Title: #{rental.book.title}, Author: #{rental.book.author}"
            end
        end
    end

end





