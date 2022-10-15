# Exes and Ohs

# Check to see if a string has the same amount of 'x's and 'o's. The method must return a boolean and be case insensitive. The string can contain any char.


def XO(str)
  h = str.downcase.chars.group_by(&:itself).transform_values(&:size)
  h['o'] == h['x']
end
