first, second = ARGV

puts "Your first fav beer is: #{first}"
puts "Your second fav beer is: #{second}"


puts "what is your least fav beer?"
least_fav_beer = $stdin.gets.chomp

puts "ok, i get it, you don't like #{least_fav_beer}"
