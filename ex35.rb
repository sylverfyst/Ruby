def gold_room()
	puts "This room is full of gold. How much do you take?"
	
	print "> "
	choice = $stdin.gets.chomp
	
	#bugged line
	if choice.include?("0") == true || choice.include?("1") == true
		how_much = choice.to_i
	else
		dead("Man, learn to type a number.")
	end
	
	if how_much < 50
		puts "Nice, you're not greedy, you win!"
		exit(0)
	else
		dead("You greedy bastard!")
	end
end

def bear_room()
	puts "There is a bear here."
	puts "The bear has a bunch of honey."
	puts "The fat bear is in front of another door."
	puts "How are you going to move the bear?"
	bear_moved = false
	
	while true
		print "> "
		choice = $stdin.gets.chomp
		
		if choice == "take honey"
			dead("The bear looks at you then slaps your face off")
		elsif choice == "taunt bear" && !bear_moved
			puts "The bear moved from the door. You can go through now."
			bear_moved = true
		elsif choice == "taunt bear" && bear_moved
			dead("The bear gets pissed off and chews your leg off")
		elsif choice == "open door" && bear_moved
			gold_room()
		else
			puts "I have no idea what that means"
		end
	end
end

def cthulu_room()
	puts "Here you see the great evil Cthulu"
	puts "He, it, whatever stares at you and you go insane."
	puts "Do you flee for your life or eat your head?"
	
	print "> "
	choice = $stdin.gets.chomp
	
	if choice.include?("flee") == true
		start()
	elsif choice.include?("eat") == true
		dead("Well that was tasty!")
	else
		cthulu_room()
	end
end

def dead(why)
	puts why, "Good Job!"
	exit(0)
end

def start()
	puts "You are in a dark room."
	puts "There is a door to your left and your right."
	puts "Which door do you take?"
	
	print "> "
	choice = $stdin.gets.chomp
	
	if choice == "left"
		bear_room()
	elsif choice == "right"
		cthulu_room()
	else
		dead("You stumble around until you starve.")
	end
end

start()