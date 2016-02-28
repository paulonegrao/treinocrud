#Using case / when statements ask user to enter the coffee shop they want to order
# from and then print:
#"Grande Latte" if they enter Starbucks and "Double Double" if they enter "Tim Hortons" and
# "Medium Coffee" if they enter Blenz and "I don't know this shop" if the enter something else.
print "What's the coffee maker to be ordered?\n"
maker = gets.chomp.downcase
case maker
when "starbucks" then product = "Gande Latte"
when "tim hortons" then product = "Double Double"
when "blenz" then product = "Medium Coffee"
else
  product = "I don't know this shop"
end

puts product
