# pseudo code 
# Ask user to input 7 numbers 
#   - take the first 6 numbers and put them into an array 
#   - see if the last (7th) number is in the array 
#   - If it is in the array print that it does appear 
#   - else print that it does not appear
array = []

puts "Enter the 1st number:"
number1 = gets.chomp
array.push(number1)

puts "Enter the 2nd number:"
number2 = gets.chomp
array.push(number2)

puts "Enter the 3rd number:"
number3 = gets.chomp
array.push(number3)

puts "Enter the 4th number:"
number4 = gets.chomp
array.push(number4)

puts "Enter the 5th number:"
number5 = gets.chomp
array.push(number5)

puts "Enter the 6th number:"
number6 = gets.chomp 
array.push(number6)

puts "Enter the 7th number:"
number7 = gets.chomp 

if array.include?(number7)
  puts "The number #{number7} appears in #{array}."
else
  puts "The number #{number7} does not appear in #{array}." 
end 

