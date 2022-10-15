# Find numbers which are divisible by given number

# Complete the function which takes two arguments and returns all numbers which are divisible by the given divisor. First argument is an array of numbers and the second is the divisor.


def divisible_by(n, d)
  n.reject { |n| n % d != 0 }
end
