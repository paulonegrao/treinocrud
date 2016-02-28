require "./blog.rb"
class Comment < Blog
attr_accessor :addcomm

  def initialize(subject)
    teste = "@#{subject}"
    eval "teste = Array.new"
  end

  def addcomm(subject)
    puts "Leave your Comments about #{subject}\n"
    teste = "@#{subject}"
    eval "teste << gets"
    puts "Ok, thanks"

  end
  def delcomm(subject, commnum)
    subject.delete_at(commnun)
  end

  def showcomm(subject)
    teste = "@#{subject}"
    eval "puts teste"
  end

end
