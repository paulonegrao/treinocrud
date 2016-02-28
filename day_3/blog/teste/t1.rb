require "./T2"
require "./T3"
class T1

@w2 = T2.new
print @w2
@w3 = T3.new
print @w3
puts "................."
#puts @w2.t2
v = "@w3"
puts eval "v.t3"


end
