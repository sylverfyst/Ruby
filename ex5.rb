name = 'Bryan Metzger'
age = 25 #as of Aug 2015
height = 72.0 #inches
metric_height = height * 2.54 #cm
weight = 226.0 #lbs
metric_weight = weight * 0.453592 #kg
eyes = 'Hazel'
teeth = 'White'
hair = 'Brown'
metric_total = age + metric_height + metric_weight

puts "Let's talk about #{name}"
puts "He's #{height} inches tall, or #{metric_height} in cm"
puts "He's #{weight} pounds heavy or #{metric_weight} kg."
puts "Actually that's not too heavy."
puts "He's got #{eyes} eyes and #{hair} hair."
puts "His teeth are usually #{teeth} depending on the coffee"

#this line is tricky, try to get it exactly right
puts "If I add #{age}, #{'%.2f' % metric_height}, and #{'%.2f' % metric_weight} I get #{'%.2f' % metric_total}." # '%.2f' % is a format string, to set a float to 2 decimal places