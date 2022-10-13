# Given two integers a and b, which can be positive or negative, find the sum of all the integers between and including them and return it. If the two numbers are equal return a or b.


def get_sum(a,b)
  a < b ? ar = (a..b).to_a : ar = (b..a).to_a
  r = 0
  ar.each{ |n| r += n }
  r
end
