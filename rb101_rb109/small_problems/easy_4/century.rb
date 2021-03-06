def century(year)
  century = year / 100 + 1
  century -= 1 if century % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if %w(11 12 13).include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

p century(1052)
