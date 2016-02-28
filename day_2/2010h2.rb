book = ""
hash = Hash.new(0)
while book.downcase != "exit"
  print "Say a book...\n"
  book = gets.chomp
  hash[book]+= 1
end
hash.sort {|k, v| v <=> k}
puts hash
