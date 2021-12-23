def greet(name)
  puts 'Hello #{name}.'
end

def shout_greet(name)
  name.chop!
  puts 'HELLO #{name.upcase}. WHY ARE WE SCREAMING?'
end

puts 'What is your name?'
user_name = gets.chomp

user_name[-1] == '!' ? shout_greet(user_name) : greet(user_name)

# can also use user_name.end_with? 