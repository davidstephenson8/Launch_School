class Book
attr_reader :title, :author, :number

  def initialize(author, title)
    @author = author
    @title = title
  end

  @number = 42

  def to_s
    %("#{title}", by #{author} was written #{@number} times)
  end
end

book = Book.new("Neil Stephenson", "Snow Crash")
puts %(The author of "#{book.title}" is #{book.author}.)
puts %(book = #{book}.)
