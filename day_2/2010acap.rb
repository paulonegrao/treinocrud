array = %w(batatinha quando nasce se esparrama pelo chao)
warray = []
array.each do |x|
  print x.capitalize + "\n"
  warray.push(x.capitalize)
end
print warray
