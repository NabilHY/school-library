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

    def add_book(title, author)
        book = Book.new(title, author)
        @books.push(book)
    end

    def list_people
        @person.each do |pers|
            puts "[#{pers.ps}] Name: #{pers.name}, ID: #{pers.id}, Age: #{pers.age}"
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
end





