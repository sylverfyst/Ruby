module Ex25

	#this function will break up words for us
	def Ex25.break_words(stuff)
		words = stuff.split(' ') #same as java split, returns array of strings 
		return words
	end
	
	#Sort the words
	def Ex25.sort_words(words)
		return words.sort  #sorts array of strings by alphabetical order
	end
	
	#prints the first word after shifting it off.
	def Ex25.print_first_word(words)
		word = words.shift #removes the word from the array so be careful! pulls from the front of the array FIFO
		puts word
	end
	
	#prints the last word after popping it off.
	def Ex25.print_last_word(words)
		word = words.pop #removes the word from the array so be careful! pulls from the back of the array LIFO
		puts word
	end
	
	#Takes in a full sentence and returns the sorted words
	def Ex25.sort_sentence(sentence)
		words = Ex25.break_words(sentence)
		return Ex25.sort_words(words)
	end
	
	#Prints the first and last word of a sentence 
	def Ex25.print_first_and_last(sentence)
		words = Ex25.break_words(sentence)
		Ex25.print_first_word(words)
		Ex25.print_last_word(words)
	end
	
	#Prints the first and last word of a sentence 
	def Ex25.print_first_and_last_sorted(sentence)
		words = Ex25.sort_sentence(sentence)
		Ex25.print_first_word(words)
		Ex25.print_last_word(words)
	end
end