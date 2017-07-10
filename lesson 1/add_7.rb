ar = [1, 6,1,8,2,-1,3,5] 
max = ar[0]
max_index = 0

ar.each_with_index do |value, index| 
    if (value > max)
        max = value
        max_index = index
    end
end

ar[max_index] += 100

puts ar