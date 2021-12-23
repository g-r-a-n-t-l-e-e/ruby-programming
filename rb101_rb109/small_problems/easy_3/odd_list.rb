# pseduo code
# define method that takes an array
# - put every other element in the array in a new array
# - return new array.

def oddities(arr)
  new_arr = []
  index = 0
  while index < arr.size
    new_arr << arr[index]
    index += 2
  end
  new_arr
end

# -------- alternate answer w/ each_with_index -------- #
# def oddities(arr)
#   new_arr = []
#   arr.each_with_index do |index, value|
#     if index.even?
#       new_arr << arr[value]
#     end
#   end
#   new_arr
# end

p oddities([2, 3, 4, 5, 6])

