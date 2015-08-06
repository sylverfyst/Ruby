#Grab file name from arguments
filename = ARGV.first

#create File Object containing the file from the args
txt = open(filename)

#print file name + message
puts "Here's your file #{filename}:"

#print output from file
print txt.read
close(txt)

#get the file name from user input
print "Type the filename again: "
file_again = $stdin.gets.chomp

#does same shit
txt_again = open(file_again)

print txt_again.read
close(txt_again)