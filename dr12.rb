print "Give me some money and I'll give you 10% back"
puts "How much will you give me?"
input = gets.chomp.to_f
puts "Thank you. You gave me $#{input}"
change = input/10
puts "Your change is $#{change}"
