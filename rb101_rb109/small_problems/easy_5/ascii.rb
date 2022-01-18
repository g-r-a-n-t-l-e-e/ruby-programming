
def ascii_value(string)
  return 0 if string == ''
  sum_array = []
  new_string = string.split('')
  new_string.each { |e| sum_array << e.ord }
  sum_array.reduce(:+)
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0