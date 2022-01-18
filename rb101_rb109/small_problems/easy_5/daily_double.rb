
def crunch(str)
  index = 0
  new_str = ''
  while index < str.size
    new_str << str[index] unless str[index] == str[index + 1]
    index += 1
  end
  new_str
end

p crunch('4444abcabccba')