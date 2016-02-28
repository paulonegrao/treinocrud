array = []
for i in (1..100)
  if i % 3 == 0 && i % 5 == 0
    array.push("FIZZBUZZ")
  elsif i % 3 == 0
    array.push("FIZZ")
  elsif i % 5 == 0
    array.push("BUZZ")
  else
    array.push(i)
  end
end
puts array
