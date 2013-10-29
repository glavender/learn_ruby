class RPNCalculator < Array
  
  def plus
    if self == []
      raise Exception.new("calculator is empty")
    end
    @total = self[-1]
    @total += self[-2]
    self.pop
    self.pop
    self.push(@total)
  end

  def minus
    if self == []
      raise Exception.new("calculator is empty")
    end
    @total = self[-1]
    @total = self[-2] - self[-1]
    self.pop
    self.pop
    self.push(@total)
  end

  def divide
    if self == []
      raise Exception.new("calculator is empty")
    end
    @total = self[-1]
    @total = self[-2].to_f / self[-1]
    self.pop
    self.pop
    self.push(@total)
  end

  def times
    if self == []
      raise Exception.new("calculator is empty")
    end
    @total = self[-1]
    @total = self[-2] * self[-1]
    self.pop
    self.pop
    self.push(@total)
  end

  def value
    @total
  end

  def tokens(str)
    output = str.split(" ").map! do |x|
      if "1234567890".include? x
        x.to_i
      else
        x.to_sym
      end
    end
    output
  end

  def evaluate(str)
    arr = RPNCalculator.new
    str.split(" ").each do |x|
      if x == "+"
        arr.plus
      elsif x == "-"
        arr.minus
      elsif x == "*"
        arr.times
      elsif x == "/"
        arr.divide
      else
        arr.push(x.to_i)
      end       
    end
    arr.value
  end
end