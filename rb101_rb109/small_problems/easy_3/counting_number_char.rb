# pseudo-code
# Prompt user for a valid str input
#   - create method that splits word
#   - record each char but skip spaces
#   - output number of char and original str


count_array = []
count = 0
ALPHABET = 'abcdefghijklmnopqrstuvwxyz'

def prompt(s)
  puts ("=> #{s}")
end

prompt("What is the word or multiple words?")
str = gets.chomp



array_str = str.chars

array_str.each do |e|
  count += 1 if ALPHABET.include?(e.downcase)
end

prompt("There are #{count} characters in #{str}.")
