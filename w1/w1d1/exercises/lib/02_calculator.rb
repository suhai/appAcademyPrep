def add(num1, num2)
 num1 + num2
end
#

def subtract(num1, num2)
 num1 - num2
end
#

def sum(arr)
  return 0 if arr.empty?
  arr.reduce(:+)
end
#

def multiply(*nums)
  nums.reduce(:*)
end
#

def power(num1, num2)
  num1 ** num2
end
#

def factorial(num)
  return 1 if num == 0 || num == 1
  (1..num).reduce(:*)
end
#