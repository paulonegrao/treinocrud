require "./blog.rb"
require "./post.rb"
require "./comment.rb"

@blog = Blog.new
    loop do
      puts "#" * 80
      print "Select:\n"
      print "ap = AddPost      sb = ShowBlog\n"
      print "ac = AddComment   sc = ShowComment    dc =  DeleteComment\n"
      print "ex = Exit\n"
      puts "#" * 80

      action = gets.chomp.downcase

      case action
      when "ap"
        if @blog.new_subject
          post_array_w = Post.new(@blog.subject)
          post_array_w.addpost(@blog.subject, @blog.hposts)
        else
          puts "Subject already exists, try a Comment"
        end
      when "sb"
        @blog.show_blog
      when "ac"
        if @blog.new_subject
          puts "Subject does not exist, try a Post"
        else
          comm_array_w = Comment.new(@blog.subject)
          comm_array_w.addcomm(@blog.subject)
        end
      when "sc"
        if @blog.new_subject
          puts "Subject does not exist, try a Post"
        else
          puts @AAA
          teste = "@#{@blog.subject}"
          eval "teste.showcomm(" + @blog.subject + ")"
        end

      when "ex"
        puts "Exiting...."
        break
      else
        print "Exit? (y/n)\n"
        if gets.chomp.downcase == "y"
          puts "Exiting...."
          break
        end
      end
    end

      #loop do
      #  if action == "post" || action == "comment"
      #    print "What's the Subject?\n"
      #    subject = gets.chomp.upcase
      #    if @hpost.keys.include? subject
      #      if action == "post"
      #        puts "Subject already exists, try a Comment"
      #      else
      #        vai pro comment
      #      end
      #    elsif action == "post"
      #      Post.new(subject)
      #    else
      #      puts "No Posts for this Subject yet, try Post one"
      #    end
      #  else
      #    puts "Exiting...."
      #    break
      #  end
      #end
