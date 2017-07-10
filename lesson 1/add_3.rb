number = 1234567
sum = 0
number.to_s.each_char{|s| sum += s.to_i}
puts sum