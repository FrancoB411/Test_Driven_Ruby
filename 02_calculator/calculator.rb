

def add num1, num2
  num1 + num2
end

def subtract num1, num2
  num1 - num2
end

def sum(array)
  total = 0
  array.each{ |item| total += item }
  total
end

def multiply(*nums)
  nums == [] ? total = 0 : total = 1
  nums.each{ |item| total *= item }
  total
end

def power(num1, num2)
  num1 ** num2
end

def factorial(num)
  tally, total = num, 1
  num.times do  
    total *= tally
    tally -= 1
  end
  total
end