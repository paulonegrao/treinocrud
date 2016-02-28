class Blog
  attr_accessor :hposts, :subject
  def initialize
      @@hposts = {}
      @subject = ""
  end

  def new_subject
        print "What's the Subject?\n"
        @subject = gets.chomp.upcase
        if @@hposts.keys.include? @subject
          return false
        else
          return true
        end
  end

  def show_blog
      @@hposts.each do |k, v|
        puts "Subject: #{k}"
        puts "         #{v}"
        puts "." * 80
      end
  end
end
