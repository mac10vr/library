class Person
  attr_reader :name, :books
  
  def initialize(name)
    @name = name
    @books = {}
  end
end

