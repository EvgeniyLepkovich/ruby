def build(str, &block)
  str = a str, &block
end

def a(str, &block)
  str = block.call str, __method__.to_s
  b str, &block
end

def b(str, &block)
  str = block.call str, __method__.to_s
  c str, &block
end

def c(str, &block)
  str = block.call str, __method__.to_s
end

p build("") {|string, value| string + value}
p c("cianci") { |string, value| string.count(value) }