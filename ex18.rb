#this is a function, but using a argument similar to ARGV - pointer maybe?
def print_two(*args)
	arg1, arg2 = args
	puts "arg1: #{arg1}, arg2: #{arg2}"
end

#ok that *args argument is actually pointless, use string arguments
def print_two_again(arg1, arg2)
	puts "arg1: #{arg1}, arg2: #{arg2}"
end

#this takes just one argument
def print_one(arg1)
	puts "arg1: #{arg1}"
end

#this one takes no arguments
def print_none()
	puts "I got nothin'."
end

print_two("Bryan", "Metzger")
print_two_again("Bryan","Metzger")
print_one("First!")
print_none()