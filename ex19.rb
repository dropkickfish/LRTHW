# defines the cheese_and_crackers function with input variables
def cheese_and_crackers(cheese_count, boxes_of_crackers)
  #puts string including cheese_count variable
  puts "You have #{cheese_count} cheeses!"
  #puts string including boxes_of_crackers variable
  puts "You have #{boxes_of_crackers} boxes of crackers!"
  #puts string
  puts "Man that's enough for a party!"
  #puts string w/ new line
  puts "Get a blanket.\n"
#ends function definition
end

#puts string
puts "We can just give the functionnumbers directly:"
#calls function and gives variable
cheese_and_crackers(20, 30)

#puts string
puts "OR, we can use variables from our script:"
#sets value for  function variables
amount_of_cheese = 10
amount_of_crackers = 50

#cals function with variables
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

#puts string
puts "We can even do math inside too:"
#calls function with variables
cheese_and_crackers(10 + 20, 5 + 6)

#puts string
puts "And we can combine the two, variables and math:"
#calls function with variables
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)
