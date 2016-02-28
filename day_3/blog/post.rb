#Model a blog post and comments with classes and make it so a blog have many comments.
#Add the ability for me to add and remove comments from a blog.

require "./blog.rb"
class Post < Blog

attr_accessor :subject

  def initialize(subject)

    teste = "@#{subject}"
    eval "teste = Array.new"
  end

  def addpost(subject, hposts)
    print "Write here about #{subject}:\n"
    @@hposts[subject] = gets.chomp
    puts @@hposts

  end



end
