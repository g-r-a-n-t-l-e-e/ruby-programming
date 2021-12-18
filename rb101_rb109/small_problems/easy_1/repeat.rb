def repeat(str, num)
  num.times do 
    puts str
  end
end 


# -------- alternate answer -------- #
# def repeat(str, num)
#   while num > 0 
#     puts str 
#     num -= 1
#   end 
# end 

repeat('Hello', 3)