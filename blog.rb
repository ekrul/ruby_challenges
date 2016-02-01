
    # Create a file in your ruby_challenges folder and title it blog.rb
    # Create a class that will be the blueprint for each ‘BlogPost’ object. This class should set a title, content, a publish date, and maybe even an author for each NEW post. You may want to do this by
    # modifying the initialize method OR you may want you craft your own method, with all the special behaviour in it.
    # use logic to create a prompt saying “do you want to create another blog post? [Y/N]”. If you hit Y the script will run through the questions to add content. If you hit N, you will stop entering content.
    # Hmm, shouldn’t you be practicing inheritance? Create a parent class called something like ‘Blog’, that will keep track of how many blog posts you have created, and what to do with them.
    # Save all blog posts in an array or a hash (you learned about these in lesson 7), in the parent class. Experiment with both. Push every new blog post into said array. Look up ‘Array’ methods in ruby to figure out how this might be possible.
    # Let’s create a variable that will count our blog posts, starting at 0, and a method that will increment with each new blog post created and appended to our array of posts. Should this be an instance variable or a class variable? In what class should this counter be?
    # Create a ‘publish’ method that will output all your blog posts to the terminal Would that be a class or instance method?
    # Make it so that blog posts can have authors
class Blog


end

class Blog_post < Blog
  attr_accessor :title, :content, :publish_date, :author

  def initialize
    @title = @content = @publish_date = @author = " "
  end
  def title=(title)
    @title = title
  end
end

def make_blog_post
  def find_out_author
    puts "What's your name?"
    author = gets.chomp
  end

  def find_out_blog_title
    puts "What's the blog post title?"
    title = gets.chomp
  end

  def create_blog_content
    puts "Write your stuff."
    content = gets.chomp
  end
end


wanna_blog_post = "Do you want to write a blog post? Yes or no?"
puts wanna_blog_post
answer = gets.chomp.downcase

if (answer != "yes" || answer != "no")
  puts "Hm? Seems like I need to repeat my question. Do you want to write a blog post? Yes or no?"
  answer = gets.chomp.downcase
else
  while (answer == "yes")
    puts make_blog_post
    puts wanna_blog_post
  end
  while (answer == "no")
    puts "Let's stop it here then."
  end
end


my_blog_post = Blog_post.new
my_blog_post.title = find_out_blog_title
my_blog_post.author = find_out_author
my_blog_post.content = create_blog_content

puts "Title: #{my_blog_post.title} Author: #{my_blog_post.author} Blog post: #{my_blog_post.content}"
