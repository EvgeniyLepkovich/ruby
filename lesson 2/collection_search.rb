def range_finder(range)
  max = 0;
  range.to_a.each {|i| max = i if i % 7 == 3 && i > max}
  return max
end

p range_finder((1..10))
p range_finder((50...105)) # => 101
p range_finder((1..5)) # => 3
