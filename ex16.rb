filename = ARGV.first

puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

$stdin.gets

puts "Opening the file..."
target = open(filename, 'w') # open with write permissions, this will overwrite anything in the file, 
#so we "could" ignore truncate if what we're writing is longer than what's in it.  Better safe than sorry though.

puts "Truncating the file. Goodbye!"
target.truncate(0) #empties the file

puts "Now I'm going to ask you for three lines."

print "line 1: "
line1 = $stdin.gets # removing the chomp keeps the new line at the end of the input

print "line 2: "
line2 = $stdin.gets

print "line 3: "
line3 = $stdin.gets

puts "I'm going to write these to the file."

target.write(line1 + line2 + line3) # concat and write the 3 strings to file

puts "And finally, we close it."
target.close