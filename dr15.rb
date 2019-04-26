#gets arument variable from terminal and names it "filename"
filename = ARGV.first

#assigns variable txt as result of opening filename variable
txt = open(filename)

#prints string and adds new line. String inlcudes filename variable in string
puts "Here's the contents of file #{filename}"
#prints ouutcome of read command on txt variable
print txt.read
#closes filename
close(filename)

#prints string asking for new filename
print "Type the filename again: "
#assigns variable file_again using the $stdin.gets.chomp command
file_again = $stdin.gets.chomp

#opens file again and assigns the value txt_again
txt_again = open(file_again)
#prints result of read command on txt_again
print txt_again.read
#closes txt_again
close(txt_again)
