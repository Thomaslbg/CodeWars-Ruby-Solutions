# Square Every Digit

def square_digits num
  num.digits.reverse.map{ |n| (n ** 2).to_s }.join.to_i
end
