def add (a,b)
  a + b
end

def subtract (a, b)
  a - b
end

def sum(arr)
  i = 0
  arr.each {|x| i += x}
  return i
end

def multiply(*a)
  i = 1
  a.each {|x| i *= x}
  return i
end

def factorial(num)
  i = num
  total = num
  if num == 0 || num == 1
    total = 1
  end
  while i > 1
    total *= (i - 1)
    i -= 1
  end
return total
end
