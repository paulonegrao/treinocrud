require "./blog.rb"
require "./post.rb"
require "./comment.rb"

@blog = Blog.new
    loop do
      puts "#" * 80
      print "Select:\n"
      print "ap = AddPost      sb = ShowBlog\n"
      print "ac = AddCommen    dc = DeleteComment\n"
      print "ex = Exit\n"
      puts "#" * 80

      action = gets.chomp.downcase

      case action
        # AddPost
      when "ap"
        if @blog.new_subject?
          @post_array_w = Post.new(@blog.subject)
          @post_array_w.addpost(@blog.subject)
        else
          puts "Subject already exists, try a Comment"
        end

        # ShowBlog
      when "sb"
        @blog.show_blog

        # AddComment
      when "ac"
        if @blog.new_subject?
          puts "Subject does not exist, try a Post"
        else
          @comm_array_w = Comment.new
          @comm_array_w.addcomm(@blog.subject)
        end

        #DeleteComment
      when "dc"
        if @blog.new_subject?
          puts "Subject does not exist, try a Post"
        else
          if @blog.comm_exists?(@blog.subject)
            @comm_array_w.delcomm(@blog.subject, @blog.del_comm_num)
          else
            puts "Comment's number is invalid"
          end
        end

        #Exit
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
