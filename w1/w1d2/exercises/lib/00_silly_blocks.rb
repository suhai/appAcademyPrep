def reverser(&prc)
  # result = prc.call
  # result.split(" ").map { |x| x.reverse }.join(" ")
  # or 
  # result = yield
  # result.split(" ").map { |x| x.reverse }.join(" ")
  # or 
  prc.call.split(" ").map { |word| word.reverse }.join(" ")
end
#

def adder(starter = 1, &prc)
  # prc.call + starter
  # or
  yield + starter
end
#

def repeater(num = 1, &prc)
  # num.times { prc.call }
  # or
  num.times { yield }
end