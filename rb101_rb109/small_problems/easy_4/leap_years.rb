def leap_year?(year)
  year % 4 == 0 && year % 100 != 0 || year % 100 == 0 && year % 400 == 0
end

p leap_year?(2016)
p leap_year?(2015)
p leap_year?(2100)
p leap_year?(2400)