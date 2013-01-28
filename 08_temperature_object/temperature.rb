class Temperature
  attr_accessor :options

  def initialize(options)
    self.options = options
  end

  def in_fahrenheit
    options[:f] ? options[:f] : c_to_f(options[:c])
  end

  def in_celsius
    options[:c] ? options[:c] : f_to_c(options[:f])   
  end

  def self.from_celsius(temp_in_c)
    new(:c => temp_in_c)
  end

  def self.from_fahrenheit(temp_in_f)
    new(:f => temp_in_f)
  end

private 
  
  def c_to_f(c_temp)
    (c_temp * 9.0/5) + 32
  end

  def f_to_c(f_temp)
    (f_temp - 32.0) * 5/9
  end
end

class Celsius < Temperature
  def initialize(c)
    super(:c => c)
  end
end

class Fahrenheit < Temperature
  def initialize(f)
    super(:f => f)
  end
end





