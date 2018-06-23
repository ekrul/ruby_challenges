
class Blog


end

class BlogPost < Blog
  attr_accessor :title, :content, :publish_date, :author

  @@current_count = 0

  def initialize
    @@current_count +=1
    @title = @content = @publish_date = @author = " "
  end

  def self.current_count
    puts "There are currently #{current_count} blogposts."
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


wanna_blog_post = "Do you want to write a blog post? [Y/N]?"
puts wanna_blog_post
answer = gets.chomp.downcase

if (answer != "y" || answer != "n")
  puts "Hm? Seems like I need to repeat my question. Do you want to write a blog post? Yes or no?"
  answer = gets.chomp.downcase
else
  while (answer == "y")
    puts make_blog_post
    puts wanna_blog_post
  end
  while (answer == "n")
    puts "Let's stop it here then."
  end
end


my_blog_post = BlogPost.new
my_blog_post.title = find_out_blog_title
my_blog_post.author = find_out_author
my_blog_post.content = create_blog_content

puts "Title: #{my_blog_post.title} Author: #{my_blog_post.author} Blog post: #{my_blog_post.content}"
