class Cookie

def self.info
  puts "I'm a Cookie class"
end

  def bake
    prepare
    puts "Baking the cookie"
  end
  def eat
    puts "Eating the cookie"
  end

  private
  def prepare
    puts "Preparing the cookie"
  end

end
