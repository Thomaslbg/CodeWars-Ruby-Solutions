# Complete the function scramble(str1, str2) that returns true if a portion of str1 characters can be rearranged to match str2, otherwise returns false.

# 🧑🏻‍💻 I replace each characters met in s2 in s1 by a # then compare if the number of # is the same that the length of the string we want chich means we have all the chars needed.

def scramble(s1,s2)
  s2.chars.each do |c|
    s1.sub!(c, '#')
  end
  s1.count('#') == s2.length
end
