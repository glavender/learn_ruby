class Temperature

def initialize(temp)
  @temp = temp
end

def self.in_fahrenheit(temp)
  Temperature.new({:f => temp})
end

def self.in_celsius(temp)
  Temperature.new({:c => temp})
end

def to_fahrenheit
  if @temp.keys == [:f]
    @temp[:f]
  else
    (@temp[:c] * 9.0/5.0) + 32
  end
end

def to_celsius
  if @temp.keys == [:f]
    (@temp[:f] - 32) * (5.0/9.0)
  else
    @temp[:c]
  end
end

end

class Celsius < Temperature
  def initialize(temp)
    @temp = {:c =>temp}
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    @temp = {:f => temp}
  end
end