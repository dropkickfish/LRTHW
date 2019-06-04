# Do this same kind of mapping with cities and states/regions in your country or some other country.
puts "\nThe Six Nations"
puts "-" *20

countries = {
  'ENG' => 'England',
  'IRE' => 'Ireland',
  'SCO' => 'Scotland',
  'WAL' => 'Wales',
}



puts "\nThe Six Nations was originally known as the Home Nations."
puts "The Home nations were:"
countries.each do |abbrev, country|
  puts "#{country}"
end

puts "\nIn 1910, the Home Nations evolved into the Five Nations as France was added into the mix."
countries['FRA'] = 'France'


puts "\nAnd in 2000 Italy joined to make it the Six Nations"
countries['ITA'] = 'Italy'

puts "\nThe Six Nations Championship now includes the following teams"
countries.each do |abbrev, country|
  puts "#{country}, abbreviated as #{abbrev} by the IRB"
end

capitals = {
  'England' => 'London',
  'Ireland' => 'Dublin',
  'Scotland' => 'Edinburgh',
  'Wales' => 'Cardiff',
  'France' => 'Paris',
  'Italy' => 'Rome'
}

stadiums = {
  'London' => 'Twickenham',
  'Paris' => 'Stade de France',
  'Edinburgh' => 'Murrayfield',
  'Cardiff' => 'Principality Stadium',
  'Rome' => 'Stadio Olimpico',
  'Dublin' => 'Lansdown Road'

}

puts "\nThe capital of England is #{capitals['England']}, home of #{stadiums[capitals['England']]}"
puts "The capital of Ireland is #{capitals['England']}, which used to be home of #{stadiums[capitals['Ireland']]}"
stadiums['Dublin'] = 'Aviva Stadium'
puts "This changed in 2010 with the construction of #{stadiums[capitals['Ireland']]}"
print "#{stadiums[capitals['Wales']]} in #{capitals['Wales']} was also once known as "
stadiums['Cardiff'] = 'Millenium Stadium'
puts "#{stadiums[capitals['Wales']]}"

puts "-" *20

# Find the Ruby documentation for hashes and try to do even more things to them.

# Hashes can use an alternative syntax - you don't need to use => but can use : instead
# Apparently you can use them to have named parameters in functions, I don't quite get the e.g. in the
# official documentation, but I've copied it below to play with later

# Person.create(name: "John Doe", age: 27)
#
# def self.create(params)
#   @name = params[:name]
#   @age  = params[:age]
# end

# You can invert hash keys and values using .invert
