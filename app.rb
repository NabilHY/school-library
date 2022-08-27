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
    case books.length
    when 0
      puts 'There are no books in the library'
    else
      puts 'Here are all the books in the library:'
      @books.each do |book|
        puts "Title: #{book.title}, Author: #{book.author}"
      end
    end
    sleep(2)
    main
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

  def rental_creation
    if person.length.zero? || books.length.zero?
      puts 'There are no people or books in the library'
    else
      rental_confirmation
    end
    sleep(2)
    main
  end

  def rental_confirmation
    puts 'Select a book from the following list by number(not ID):'
    @books.each_with_index do |book, i|
      puts "#{i}) Title: #{book.title}, Author: #{book.author}"
    end
    book = gets.chomp.to_i
    puts 'Select a person from the following list by number(not ID):'
    @person.each_with_index do |person, i|
      puts "#{i}) Name: #{person.name}, Age: #{person.age}"
    end
    person = gets.chomp.to_i
    print 'Date:'
    date = gets.chomp
    rental = Rental.new(@books[book], @person[person], date)
    @rentals.push(rental)
    puts 'Rental created successfully!'
  end

  def add_book
    print 'Title:'
    title = gets.chomp.capitalize!
    print 'Author:'
    author = gets.chomp.capitalize!
    book = Book.new(title, author)
    @books.push(book)
    puts 'Book created successfully!'
    sleep(2)
    main
  end

  def list_people
    case person.length
    when 0
      puts 'There are no people in the library'
    else
      puts 'Here are all the people in the library:'
      @person.each do |pers|
        puts "[#{pers.ps}] Name: #{pers.name}, ID: #{pers.id}, Age: #{pers.age}"
      end
    end
    sleep(3)
    main
  end

  def add_teacher(age, name, id, specialization)
    teacher = Teacher.new(name, age, id, specialization)
    @person.push(teacher)
  end

  def add_student(age, name, id, parent_permission)
    student = Student.new(age, name, id, parent_permission)
    @person.push(student)
  end

  def list_rentals_for_person
    print 'ID of person : '
    id = gets.chomp.to_i
    res = person.find { |pers| pers.id == id }
    if res.nil?
      puts 'There is no person with that ID'
    else
      puts "Here are all the rentals for #{res.name}:"
      @rentals.each do |rental|
        puts "Title: #{rental.book.title}, Author: #{rental.book.author}" if rental.person.id == id
      end
    end
    sleep(2)
    main
  end

  def person_input
    puts 'Do you want to create a student (1) or a teacher (2)? [Input the number]'
    input = gets.chomp.to_i
    case input
    when 1
      student_input
    when 2
      teacher_input
    end
  end

  def teacher_input
    print 'Name:'
    name = gets.chomp.capitalize!
    print 'age:'
    age = gets.chomp.to_i
    print 'Has parent permission? [Y/N]:'
    boo = gets.chomp
    parent_permission = %w[Y y].include?(boo)
    print 'ID:'
    id = gets.chomp.to_i
    add_student(age, name, id, parent_permission)
    print 'Student created successfully!'
    sleep(2)
    main
  end

  def student_input
    print 'Age:'
    age = gets.chomp.to_i
    print 'Name:'
    name = gets.chomp.capitalize!
    print 'Specialization:'
    specialization = gets.chomp.capitalize!
    print 'ID:'
    id = gets.chomp.to_i
    Appl.add_teacher(name, age, specialization, id)
    print 'Person created successfully!'
    sleep(2)
    main
  end
end
