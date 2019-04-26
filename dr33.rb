def a_function(i,z)


numbers = []

while i < 6
  puts "At the top i is #{i}"
  numbers.push(i)

  i += z
  puts "Numbers now: ", numbers
  puts "At the bottom i is #{i}"
end

puts "The numbers: "

# remember you can write this 2 other ways?
numbers.each {|num| puts num }

end

puts a_function(0, 2)

puts "--------------"

ar = [0..6]
for item in ar
  puts item
end
