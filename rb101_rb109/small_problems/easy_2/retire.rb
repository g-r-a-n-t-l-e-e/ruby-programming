puts "What is your age?"

age = gets.chomp.to_i 

puts "At what age would you like to retire?"

retirement = gets.chomp.to_i 

diff = retirement - age

year_of_retirement = 2016 + diff

puts "It's 2016. You will retire in #{year_of_retirement}."

puts "You have only #{diff} years of work to go!"