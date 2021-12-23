num = ''
loop do 
  puts ">> Please enter an integer greater than 0:"
  num = gets.chomp.to_i
  break if num.integer? && num > 0  
end 

puts ">> Enter 's' to compute the sum, 'p' to compute the product."

computation = gets.chomp

range_num = (1..num).to_a

sum_range = range_num.reduce(:+)

product_range = range_num.reduce(:*) 
# could also use range_num.inject(:*)

if computation == 's'
  puts "The sum of the integers between 1 and #{num} is #{sum_range}."
elsif computation == 'p'
  puts "The product of the integers between 1 and #{num} is #{product_range}." 
else 
  puts "Oops. Unknown operation."
end 
  