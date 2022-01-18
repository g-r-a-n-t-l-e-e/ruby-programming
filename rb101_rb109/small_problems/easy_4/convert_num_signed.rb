DIGITS = %w(0 1 2 3 4 5 6 7 8 9)

def integer_to_string(int)
  int.digits.map { |d| DIGITS[d] }.join.reverse
end

def signed_integer_to_string(num)
  return '0' if num == 0
  (num.positive? ? '+' : '-') + integer_to_string(num.abs)
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'