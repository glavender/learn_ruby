def reverser(&block)
  word = yield
  word.split(" ").map { |x| x.reverse }.join(" ")
end

def adder(x = 1, &block)
  num = yield
  num += x
end

def repeater(x = 1, &block)
  num = x.times {yield}
end