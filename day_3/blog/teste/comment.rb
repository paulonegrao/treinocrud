require "./blog.rb"
class Comment < Blog
attr_accessor :addcomm

  def initialize
  end

  def addcomm(subject)
    puts "Leave your Comments about #{subject}\n"
    @@hposts[subject] << gets
    puts "Ok, thanks"

  end

  def delcomm(subject, commnum)
    @@hposts[subject].delete_at(commnum.to_i)
  end

end
