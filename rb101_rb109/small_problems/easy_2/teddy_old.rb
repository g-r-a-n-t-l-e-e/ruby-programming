range = (20..200).to_a

puts "Please enter a name"
answer = gets.chomp
answer = "Teddy" if answer.empty?

puts "#{answer} is #{range.sample} years old!"