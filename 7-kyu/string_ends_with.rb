# String ends with?

# Complete the solution so that it returns true if the first argument(string) passed in ends with the 2nd argument (also a string).

def solution(str, ending)
  (str =~ /#{Regexp.quote(ending)}\z/).nil? ? false : true
end
