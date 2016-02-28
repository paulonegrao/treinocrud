print "Give me a string\n"
str = gets.chomp.downcase
if str.include?("c")
   puts "Yes, it has C"
else
   puts "There is no C"
end
