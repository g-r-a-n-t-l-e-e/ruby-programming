# pseudo code
# Get user input for num
# find all multiples of 3 & 5 between 1 and num
# compute sum of all those multiples found
# return the sum


def multisum(num)
  multiples = (1..num).to_a
  multiples.select! { |e| e % 3 == 0 || e % 5 == 0 }
  multiples.reduce(:+)
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168