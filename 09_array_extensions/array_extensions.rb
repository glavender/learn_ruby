class Array

def sum
  if self == []
    0
  else
    self.inject { |result, element| result + element}
  end
end

def square
    self.map { |x| x ** 2}
end

def square!
    self.map { |x| x ** 2}
end

end