class Films_and_books
  def set_title=(title)
    @title = title
  end
  def get_title
    return @title
  end
  def set_comment=(my_comment)
    @comment = my_comment
  end
  def get_comment
    return @comment
end

class Films  < Films_and_books
  def set_actor=(main_actor)
    @actor = main_actor
  end
  def get_actor
    return @actor
  end
  def set_director=(director)
    @director = director
  end
  def get_director
    return @director
  end
end

class Books < Films_and_books
  def set_author=(author_name)
    @author = author_name
  end
  def get_author
    return @author
  end
end

    favourite_book = Books.new
    favourite_book.set_title="Schilf"
    favourite_book.set_author="Juli Zeh"
    favourite_book.set_comment="a pager-turner"

    other_favourite_book = Books.new
    other_favourite_book.set_title="Seta"
    other_favourite_book.set_author="Alessandro Baricco"
    other_favourite_book.set_comment="a beautifully written book"

    favourite_film = Films.new
    favourite_film.set_title="La cité de la peur"
    favourite_film.set_actor="Chantal Lauby"
    favourite_film.set_director="Alain Berbérian"
    favourite_film.set_comment="hilarious"

    other_favourite_film = Films.new
    other_favourite_film.set_title="La meglio gioventù"
    other_favourite_film.set_director="Marco Tullio Giordana"
    other_favourite_film.set_actor="Luigi Lo Cascio"
    other_favourite_film.set_comment="very intense"


puts "Looking for something interesting to read? Or maybe you prefer watching a film? Here are my suggestions:\n
Films:\n
You want something funny? Then I suggest you watch \"#{favourite_film.get_title}\" (by #{favourite_film.get_director}) with #{favourite_film.get_actor} in one of the main roles. Simply #{favourite_film.get_comment}!\n
If you prefer something deeper, maybe you would appreciate \"#{other_favourite_film.get_title}\" (by #{other_favourite_film.get_director}) with #{other_favourite_film.get_actor}. This film is #{other_favourite_film.get_comment}.
Books:\n
If you like Italian literature, I recommand reading \"#{other_favourite_book.get_title}\"
written by #{other_favourite_book.get_author}. It's #{other_favourite_book.get_comment}!\n
If you prefer German literature, you should read \"#{favourite_book.get_title}\"
written by #{favourite_book.get_author}. It's #{favourite_book.get_comment}!"

end
