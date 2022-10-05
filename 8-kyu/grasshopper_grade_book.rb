# Complete the function so that it finds the average of the three scores passed to it and returns the letter value associated with that grade.

def get_grade(s1, s2, s3)
  avg = [s1, s2, s3].sum / 3
  return "A" if (90..100) === avg
  return "B" if (80..89) === avg
  return "C" if (70..79) === avg
  return "D" if (60..69) === avg
  return "F" if (0..59) === avg
end
