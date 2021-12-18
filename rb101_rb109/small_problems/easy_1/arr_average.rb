def average(arr)
  sum = 0
  arr.each do |e|
    sum += e
  end 
  sum.to_f / arr.count
end 

puts average([1, 6])
