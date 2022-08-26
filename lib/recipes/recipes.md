#1 - Design and Create Table

Books table created


#2- Create Test SQL seeds


TRUNCATE TABLE books RESTART IDENTITY;

INSERT INTO books (title, author_name) VALUES ('Mrs Dalloway', 'Virginia Woolf';
INSERT INTO books (title, author_name) VALUES ('Dracula', 'Bram Stoker');

psql -h 127.0.0.1 book_store < spec/seeds.sql 

#3- Define the class names

# EXAMPLE
# Table name: books

# Model class
# (in lib/student.rb)
class Book

end

# Repository class
# (in lib/books_repository.rb)
class BooksRepository
end


#4-Implement the Model class

# EXAMPLE
# Table name: books

# Model class
# (in lib/book.rb)

class Book

  # Replace the attributes by your own columns.
  attr_accessor :id, :title, :author_name
end

# The keyword attr_accessor is a special Ruby feature
# which allows us to set and get attributes on an object,
# here's an example:
#
# student = Student.new
# student.name = 'Jo'
# student.name

#5-Define the Repository Class interface


class BookRepository

  def all
  end
end
# Executes the SQL query:
# SELECT id, title, release_year, artist_id FROM albums;
# Returns an array of Album objects.


6-Write Test Examples

# EXAMPLES

# 1
# Get all albums

repo = BooksRepository.new
books = repo.all


books.first.title => 'Nineteen Eighty-Four'
books.first.author_name => 'George Orwell'
books.first.id => '1'



#7-Reload the SQL seeds before each test run

# EXAMPLE

# file: spec/albums_repository_spec.rb

def reset_students_table
  seed_sql = File.read('spec/seeds.sql')
  connection = PG.connect({ host: '127.0.0.1', dbname: 'book_store'})
  connection.exec(seed_sql)
end

describe BooksRepository do
  before(:each) do 
    reset_books_table
  end

  # (your tests will go here).
end

