class Library

  attr_accessor :books

  def initialize
    @books = []
  end

  def to_s
    "Library contents:" + display_book_info
  end

  private
  def display_book_info
    @books.map do |book|
      "Title: #{book.title}, Author: #{book.author}"
    end.to_s
  end
end

class Book
  attr_accessor :author, :title, :library
  def initialize(params)
    @author = params[:author]
    @title = params[:title]
    params[:library].books << self
  end
end

# 模範解答
# class Library
#   def initialize
#     @books = []
#   end
#
#   def <<(book)
#     @books << book
#   end
#
#   def to_s
#     puts "Library contents:"
#     @books.join("\n")
#   end
# end
#
# class Book
#   attr_accessor :author, :title
#   def initialize(args)
#     @author = args[:author]
#     @title  = args[:title]
#     args[:library] << self
#   end
#
#   def to_s
#     "Title: " + @title + ", Author: " + @author
#   end
# end


# 入力
my_library = Library.new
Book.new(:author => "Herman Melville", :title => "Moby-Dick", :library => my_library)
Book.new(:author => "Hans Christian Andersen", :title => "The Ugly Duckling", :library => my_library)
puts my_library

# 出力
# Library contents:
# Title: Moby-Dick, Author: Herman Melville
# Title: The Ugly Duckling, Author: Hans Christian Andersen
