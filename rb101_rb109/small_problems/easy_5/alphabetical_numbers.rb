# input: array of integers
# output: array of integers sorted by english words
# rules: returned array should be sorted alphabetically but returned as integers

#  alphabetic_number_sort((0..19).to_a) #== [
#    8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#    6, 16, 10, 13, 3, 12, 2, 0
#  ]

# Data structure:
# [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]

# Algorithm:
# Create english_integer hash of pairings
# alaphebtic_number_sort method
# =============================
#   - Initialize arr_result to an empty array.
#   - Loop through each integer in the input array
#   - Use assign_english(integer) to turn each integer in array to its corresponding English
#   - Sort array
#   - Loop through each integer in the sorted array and map its corresponding integer value using the assign_integer method
#   - Return this newly mapped array.


NUMS = {
  0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven',
  12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen'
}

def alphabetic_number_sort(input_array)
  arr_result = []
  input_array.each do |integer|
    arr_result << assign_english(integer)
  end
  arr_result.sort!
  arr_result.map do |word|
    assign_integer(word)
  end
end

def assign_english(integer)
  NUMS[integer]
end

def assign_integer(word)
  NUMS.key(word)
end


p alphabetic_number_sort((0..19).to_a)



