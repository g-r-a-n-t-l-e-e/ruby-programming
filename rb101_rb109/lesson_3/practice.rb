def dot_separated_ip_address?(input_string)
  loop do
    dot_separated_words = input_string.split(".")
  #   while dot_separated_words.size > 0 do
  #     word = dot_separated_words.pop
  #     break unless is_an_ip_number?(word)
  #   end
  #   return true
    p dot_separated_words
    break if dot_separated_words.size == 4
    p 'done deal baby.'
  end
end

p dot_separated_ip_address?('4.5.5.1')