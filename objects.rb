class Books
	def set_title=(book_title)
		@title = book_title
	end

	def get_title
		return @title
	end

	def set_author=(author_name)
		@author = author_name
	end

	def get_author
		return @author
	end

	def set_comment=(my_comment)
		@comment = my_comment
	end

	def get_comment
		return @comment
	end
end

favourite_book = Books.new
favourite_book.set_title="Schilf"
favourite_book.set_author="Juli Zeh"
favourite_book.set_comment="phantastic"

other_favourite_book = Books.new
other_favourite_book.set_title="Seta"
other_favourite_book.set_author="Alessandro Baricco"
other_favourite_book.set_comment="great"

puts "Something is working!"

def language_choice
	puts "Looking for something interesting to read?\n
	Would you prefer German or Italian literature?\n
		Please answer 'German' or 'Italian'!"
	book_choice = gets.downcase.chomp
end

def book_suggestion_choice(language_choice)
	if book_choice == "italian"
		puts "I recommand reading \"#{other_favourite_book.get_title}\" written by #{other_favourite_book.get_author}. It's a #{other_favourite_book.get_comment} book!"
	elsif book_choice == "german"
		puts "I recommand reading \"#{favourite_book.get_title}\" written by #{favourite_book.get_author}. It's a #{favourite_book.get_comment} book!"
	else
		puts "I didn\'t understand your answer. Here\'s the question again:\n"
		puts language_choice
	end
end

#recommand_baricco = "I recommand reading \"#{other_favourite_book.get_title}\" written by #{other_favourite_book.get_author}. It's a #{other_favourite_book.get_comment} book!"
#recommand_zeh = "I recommand reading \"#{favourite_book.get_title}\" written by #{favourite_book.get_author}. It's a #{favourite_book.get_comment} book!"
