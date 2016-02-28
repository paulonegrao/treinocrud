# print "Say a number...\n"
# num = gets.chomp.to_i
#
# num.times do |j|
#   puts "#{' ' * (num - j)}#{'O ' * j}"
# end


p (1..100).step(5) {|n|
  n
}
