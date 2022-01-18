# pseudo code
# start
# get user input str
# set input str to var
# set variable to input str
#   convert str into array
#   reverse array
#   return array
# compare reversed array with input constant

def prompt(str)
  puts "=> #{str}"
end

# prompt("What is the input str? (will check for palindrome)")
# input = gets.chomp

def palindrome?(str)
  str == str.split('').reverse.join
end

p palindrome?('madam')
p palindrome?('Madam')

