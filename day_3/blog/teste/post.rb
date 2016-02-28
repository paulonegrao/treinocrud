#Model a blog post and comments with classes and make it so a blog have many comments.
#Add the ability for me to add and remove comments from a blog.

require "./blog.rb"
class Post < Blog

attr_accessor :subject

  def initialize(subject)
  end

  def addpost(subject)
    print "Write here about #{subject}:\n"
    @@hposts[subject] = Array(gets.chomp)
  end

end
