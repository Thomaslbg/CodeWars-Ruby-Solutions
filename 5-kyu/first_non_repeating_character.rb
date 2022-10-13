# First non-repeating character

# DESCRIPTION:
# Write a function named first_non_repeating_letter that takes a string input, and returns the first character that is not repeated anywhere in the string.

# For example, if given the input 'stress', the function should return 't', since the letter t only occurs once in the string, and occurs first in the string.

# As an added challenge, upper- and lowercase letters are considered the same character, but the function should return the correct case for the initial letter. For example, the input 'sTreSS' should return 'T'.

# If a string contains all repeating characters, it should return an empty string ("") or None -- see sample tests.

# 🧑🏻‍💻 group_by/transform line suggested by EliadL here https://stackoverflow.com/questions/5470725/how-to-group-by-count-in-array-without-using-loop

def  first_non_repeating_letter(s)
  h = s.downcase.chars.group_by(&:itself).transform_values(&:size)
  h.index(1) ? s[(s.downcase.index(h.index(1)))] : ""
end
