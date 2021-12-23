puts "What is the bill?"
bill_amount = gets.chomp

puts "what is the tip percentage?"
tip = gets.chomp

tip_amount = bill_amount.to_f * tip.to_f / 100

total = tip_amount.to_f + bill_amount.to_f

puts "The tip is #{sprintf("%.2f", tip)}"
puts "The total is #{sprintf("%.2f", total)}."