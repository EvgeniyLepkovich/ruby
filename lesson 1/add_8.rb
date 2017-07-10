ar = [7, 3, [4, 5, 1], 1, 9, [2, 8, 1]] 

ar.each_with_index do |value, index|
    if value.kind_of?(Array)
        new_array = value
        ar.delete_at(index)
        new_array.reverse.each {|value| ar.insert(index, value)}
    end
end

puts ar.uniq.sort {|a,b| b <=> a}