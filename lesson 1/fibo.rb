numbers = [1, 2]
count = ARGV[0].to_i
count.times{|i| numbers.push(numbers[i-2] + numbers[i-1]) if i > 1}
puts(numbers)