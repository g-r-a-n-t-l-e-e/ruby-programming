# pseudo code
# define method w/ two arguments
# - check first argument
# - check second argument
# - true if only 1 argument is true, and false otherwise.

def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end

