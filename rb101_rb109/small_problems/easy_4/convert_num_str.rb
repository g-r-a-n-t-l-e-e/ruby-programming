DIGITS = %w(0 1 2 3 4 5 6 7 8 9)

def integer_to_string(int)
  int.digits.map { |d| DIGITS[d] }.join.reverse
end

p integer_to_string(4321) == '4321'