filename = ARGV.first

puts """Do you want to read #{filename}?
Press RETURN for yes and Ctrl C to abort"

$stdin.gets

txt = open(filename)

print txt.read
