def sum_even_number_row(row_number)
  rows = []
  start_integer = 2
  (1..row_number).each do |current_row_number|
    rows << create_row(start_integer, current_row_number)
    start_integer = rows.last.last + 2
  end
  rows.last.sum # TODO: sum the final row and return the sum
  # rows.last.reduce(:+) also works
end


def create_row(start_integer, row_length)
  rows = []
  current_integer = start_integer
  loop do
    rows << current_integer
    current_integer += 2
    break if rows.length == row_length
  end
  rows
end

# row number: 1 --> sum of integers in row: 2
# row number: 2 --> sum of integers in row: 10
# row number: 4 --> sum of integers in row: 68

p sum_even_number_row(1) == 2  #true
p sum_even_number_row(2) == 10
p sum_even_number_row(4) == 68

# start: 2, Length: 1 --> [2]
# start: 4, Length: 2 --> [4, 6]
# start: 8, Length: 3 --> [8, 10, 12]

p create_row(2, 1) == [2] # true
p create_row(4, 2) == [4, 6]
p create_row(8, 3) == [8, 10, 12]


# Start the Loop
#   - Add the start integer to the row
#   - Increment the start integer by 2
#   - break out of the loop if length of row equals row_length




## Final Thoughts

# - Not a completely linear process
# - Move back and forward between the steps
# - Switch from implementation mode back to abstract problem solving mode when necessary
# - Don't try to problem solve at the code level