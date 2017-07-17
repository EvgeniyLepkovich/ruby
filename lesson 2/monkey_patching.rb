class Array
  def even_search
    array = []
    self.each {|i| array << i if yield(i)} if block_given?
    return array
  end
end

p [1, 2, 3, 4, 5, 6, 7].even_search { |i| i > 2 } # => [3, 4, 5, 6, 7]
p [1, 2, 3, 4, 5, 6, 7].even_search { |i| i > 10 } # => []
p [2, 4, 6, 8, 10, 12, 7].even_search { |i| i.between?(6, 12) } # => [6, 8, 10, 12, 7]

    