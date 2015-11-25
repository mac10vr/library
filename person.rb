class Person
  attr_reader :name, :books
  
  def initialize(name)
    @name = name
    @books = {}
  end

  def pretty_string
    "'#{@name}' has #{@books.size} books borrowed at the moment"
  end

  def borrow(book)
    @books[book.title] = book
  end

  def return(book_title)
    @books.delete(book_title)
  end

  def borrowed(book, name)
    @name.add(name)
  end

  def show_on_loan
    if !@books.empty?
      puts "#{name} has borrowed these books:"
      @books.each {|k, book| puts "#{book.title}"}
    end

  end

end


