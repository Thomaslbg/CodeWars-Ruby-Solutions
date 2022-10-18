# Break camelCase

# Complete the solution so that the function will break up camel casing, using a space between words.


def solution(string)
  string.chars.map{ |c| c == c.upcase ? " #{c}" : c }.join
end
