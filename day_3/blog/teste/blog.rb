class Blog
  attr_accessor :hposts, :subject, :del_comm_num
  def initialize
      @@hposts = {}
      @subject = ""
      @del_comm_num = 0
  end

  def new_subject?
        print "What's the Subject?\n"
        @subject = gets.chomp.upcase
        if @@hposts.keys.include? @subject
          return false
        else
          return true
        end
  end

  def comm_exists?(subject)
        print "What's the Comment's number?\n"
        @del_comm_num = gets.chomp.to_i
        if @del_comm_num > 0 && @@hposts[subject].count > @del_comm_num
          return true
        else
          return false
        end
  end

  def show_blog(subject="")
      if subject == ""
        @@hposts.each do |k, v|
          puts "Subject: #{k}"
          v.each_index do |i|
            i == 0 ? num_comm = "   " : num_comm = ("0"+i.to_s).slice(-2, 2)+":"
            puts "     #{num_comm} #{v[i]}"
            puts "         "+"." * 71
          end
          puts "_" * 80
        end
      else
        @@hposts[subject].each do |k, v|
          puts "Subject: #{k}"
          v.each_index do |i|
            i == 0 ? num_comm = "   " : num_comm = ("0"+i.to_s).slice(-2, 2)+":"
            puts "     #{num_comm} #{v[i]}"
            puts "         "+"." * 71
            num_comm += 1
          end
          puts "_" * 80
        end
      end
  end
end
