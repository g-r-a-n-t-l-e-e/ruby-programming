arr = (1..99).to_a

filtered =  arr.select do |e|
              e.even?
            end

filtered.each { |e| puts e }

