# pseudo code
# start
# get user input number
# set input num to str
# reverse str
# conver back to num
# compare reversed num with input num

# def prompt(str)
#   puts "=> #{str}"
# end

# prompt("What is the input str? (will check for palindrome)")
# input = gets.chomp

def palindrome?(num)
  reversed = num.to_s.reverse
  num.to_s == reversed
end


p palindrome?(34543)
p palindrome?(123210)
