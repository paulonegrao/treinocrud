#Build a class called FizzBuzz that takes two numbers as parameters and then have a method called run that
#returns a fizzbuzz array (numbers from 1 to 100, numbers divisible by the first number replaced by 'fizz'
#and numbers replaced by the second number replaced by 'buzz' and numbers divisible by both replaced by 'fizzbuzz').
# For instance this code should work with your class:
class FizzBuzz
  attr_accessor :n1, :n2
  def initialize(n1, n2)
    @n1 = n1
    @n2 = n2
  end

  def run
    array = []
    (1..100).each do |x|
      if x % @n1 == 0 && x % @n2 == 0
        array << "fizzbuzz"
      elsif x % @n1 == 0
        array << "fizz"
      elsif x % @n2 == 0
        array << "buzz"
      else
        array << x
      end
    end
    return array
  end
end
