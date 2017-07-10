10.downto(3) do |i| 
    if i % 3 == 0
        puts i ** 2
    else
        puts i if i != 5
    end
end