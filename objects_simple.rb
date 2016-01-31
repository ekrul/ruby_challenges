class Books
	attr_accessor :title, :author, :comment
end

favourite_book = Books.new
favourite_book.title="Schilf"
favourite_book.author="Juli Zeh"
favourite_book.comment="phantastic"

other_favourite_book = Books.new
other_favourite_book.title="Seta"
other_favourite_book.author="Alessandro Baricco"
other_favourite_book.comment="great"

puts "Looking for something interesting to read? Here are my suggestions:\n
If you like Italian literature: I recommand reading \"#{other_favourite_book.title}\"
written by #{other_favourite_book.author}. It's a #{other_favourite_book.comment} book!\n
If you prefer German literature: I recommand reading \"#{favourite_book.title}\"
written by #{favourite_book.author}. It's a #{favourite_book.comment} book!"
