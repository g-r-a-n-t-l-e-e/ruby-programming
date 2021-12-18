# Write a method that counts the number of occurrences of each element in a given array.

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv', 'SUV'
]

def count_occurrences(arr)
  occurences = {}
  
  arr.map! do |ele|
    ele.downcase
  end 

  arr.uniq.each do |ele|
    occurences[ele] = arr.count(ele) 
  end 

  occurences.each do |element, count|
    puts "#{element} => #{count}"
  end 
end 

count_occurrences(vehicles)