#Make two classes dog and bones. The dog class must have initialize method that takes dog's color and type.
#The bone must have an initialize method that assigns a size for the bone.
#The dog class must have a give method that takes a bone object and add it it to an array of bones for the dog.
#The dog can take a maximum of three bones so if you give it more than three it will will print, I have too many bones.
#The dog class must have a eat bone that when you call it it removes a bone from the array of bones and print "yummy!
# I ate 'big' bone" the 'big' part comes from the size attribute of bone.
class Dog
attr_accessor :color, :type, :tummy
  def initialize(color, type)
    puts "jahdkjhdkdj"
    @color = color
    @type = type
    @tummy = []
  end

  def give(bone)
      if @tummy.size < 3
        if @tummy.include? bone
          puts "ja tem esse osso"
        else
          @tummy << bone
        end
      else
        puts "I have too many bones"
      end
  end

  def eat
    if @tummy.length > 0
      current_bone = @tummy.last

      puts "yummy! I ate #{current_bone.size} bone"
      @tummy.pop
    else
      puts "kabo osso...."
    end
  end
end
