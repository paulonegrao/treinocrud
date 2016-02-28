require "./dog.rb"
require "./bone.rb"
print "???"

bone_sizes = %w[small big tiny super]
dogs_type = %w[pluto scooby bull colly]
dogs_color = %w[blue brown grey black]

dog1 = Dog.new(dogs_color.sample, dogs_type.sample)

5.times {|x| "dog#{x} = Dog.new(#{dogs_color}, #{dogs_type})"}
puts dog1.color
puts dog2.color
puts dog3.color
puts dog4.color
puts dog5.color
