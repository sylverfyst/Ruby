print "Give me some money: "
money = gets.chomp.to_f
change =  money * 0.1
change_str = '%.2f' % change
puts "You can have #{change_str} of it back"