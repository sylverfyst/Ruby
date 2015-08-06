puts "Mary had a little lamb."
puts "Its fleece was white as #{'snow'}." # apparently blocks work with string literals too, neat!
puts "." * 10 #what'd that do? It puts 10 .'s out to the screen

end1 = "C"
end2 = "h"
end3 = "e"
end4 = "e" # couldn't we re use variables here to save space?  i.e. only one variable for the string 'e' or 'r'?
end5 = "s"
end6 = "e"
end7 = "B"
end8 = "u"
end9 = "r"
end10 = "g"
end11 = "e"
end12 = "r"

#watch that print vs. puts on this line what's it do?
print end1 + end2 + end3 + end4 + end5 + end6 # print doesn't put a newline character at the end, good to know
puts end7 + end8 + end9 + end10 + end11 + end12 # similar to println in java