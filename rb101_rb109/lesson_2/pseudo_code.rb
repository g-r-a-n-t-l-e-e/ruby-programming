1.
# casual pseudo-code 
define a method that takes two arguments 
  - get sum of the two arguments 
  - return the sum 
output the sum 

# formal pseudo-code 
START 

method two arguments 
  get sum of arguments 
  return sum of arguments 

PRINT method(2 arguments)  

END

2.
# casual pseudo-code 
define a method that takes an array of strings 
  - join the strings together to convert the entire array to a string 
  - return the string 

# formal pseudo-cde
START 

method argument of array of strings 
  SET string = join the elments of array together into string

PRINT method(string)

END


3. 
# casual pseudo-code 
define a method that takes an array of integers 
  - take out every other element and put into new array 
  - return the array 

# formal psuedo-code
START 

method arugment of array of "integers" 
  SET new_array = []
  integers.each_with_index { |item, index| new_array.push(item) if index % 2 == 0 }
  return new_array 

PRINT method(integers)

END 
