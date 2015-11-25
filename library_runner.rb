require 'pry-byebug'

require_relative 'library'
require_relative 'book'
require_relative 'person'


## Create a library
library = Library.new 'Code Clan Library'

## Create books
book_1 = Book.new({title:'Errand', genre:'Fantasy'})
library.add_book(book_1)
library.add_book(Book.new(title: "The Hobbit", genre: "Fantasy"))
library.add_book(Book.new(title: "Feersum Endjinn", genre: "Science Fiction"))
library.add_book(Book.new(title: "Histories", genre: "History"))
library.add_book(Book.new(title: "To Kill a Mockingbird", genre: "Fiction"))
library.add_book(Book.new(title: "A Brief History of Time", genre: "Non-Fiction"))

## List the books
puts "All books #{library.list_books}"

## Create person
person_1 = Person.new("Jane")
library.add_person(person_1)
library.add_person(Person.new('Fred'))
library.add_person(Person.new('Wilma'))
library.add_person(Person.new('Barney'))
library.add_person(Person.new('Betty'))

## List people
# puts "All people #{library.list_people}"


## Lend book - ##METHOD##
person_name = "Wilma"
book_title = "The Hobbit"
library.lend(person_name, book_title)

puts "All books #{library.list_books}"
puts "All people #{library.list_people}"


## Return book
# library.return(person_name, book_title)

## List all borrowed books  CHANGED THIS LINE
library.borrowed_book_list


# puts "All books #{library.list_books}"
# puts "All people #{library.list_people}"

binding.pry;''