# Duplicate Encoder
# The goal of this exercise is to convert a string to a new string where each character in the new string is "(" if that character appears only once in the original string, or ")" if that character appears more than once in the original string. Ignore capitalization when determining if a character is a duplicate.

def duplicate_encode(word)
  h = word.downcase.chars.group_by(&:itself).transform_values(&:size)
  word.downcase.chars.map do |e|
    h[e] == 1 ? e = "(" : e = ")"
  end.join
end
