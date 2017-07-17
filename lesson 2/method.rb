def mega_sum(array, number = 0)
  sum = number
  if block_given?
    array.each {|e| sum += yield e}
  else
    array.each {|e| sum += e}
  end
  p sum
end

mega_sum([1, 2, 3, 4])
mega_sum([1, 2, 3, 4], 10)
mega_sum([1, 2, 3, 4]) {|i| i ** 2}
mega_sum([1, 2, 3, 4], 10) {|i| i ** 2}