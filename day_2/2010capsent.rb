print "Give me a sentence\n"
s = gets.chomp.split
s.each do |x| print x.capitalize + " "
end
