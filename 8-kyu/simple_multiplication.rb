# Simple multiplication
# This kata is about multiplying a given number by eight if it is an even number and by nine otherwise.

def simple_multiplication(number)
  number.even? ? number * 8 : number * 9
end
