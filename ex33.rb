def loop_func(arg1,inc) 
	i=0
	numbers = []
	while i < arg1
		puts "At the top i is #{i}"
		numbers << i
		
		i += inc
		puts "Numbers now: ", numbers
		puts "At the bottom i is #{i}"
	end
	
	puts "The numbers: "

	#remember you can write this 2 other ways
	numbers.each {|num| puts num }
	
	#numbers.each do |num|
	#	puts num
	#end
	
	#for num in numbers
	#	puts num
	#end
end


loop_func(7,2)