print "Give me a string\n"
s = gets.chomp
h =  Hash.new(0)
s.each_char { |chr|
  h[chr] += 1
}
kmax = h.key(h.values.max)
puts h
puts "#{kmax} occurs #{h[kmax]} times."
