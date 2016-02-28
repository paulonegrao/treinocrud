array = %w[aa bb cc dd ee ff gg]
puts array
i = array.size
j = 0
i.times {
  array.insert(j, array.pop)
  j +=1
}
puts array
