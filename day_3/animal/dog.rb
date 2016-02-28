require "./animal.rb"
class Dog < Animal

  def bark
    return "woof"
  end

  def eat
    super
    puts "bones are yummy"
  end
end
