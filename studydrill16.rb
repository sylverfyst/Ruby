filename = ARGV.first

puts "We're going to open and read #{filename} hit RETURN"

$stdin.gets

target = open(filename, 'r') #open with read permissions

puts "line 1: " + target.readline
puts "line 2: " + target.readline
puts "line 3: " + target.readline

puts "And we've read the file!"

target.close