# Most frequently used words in a text

# Write a function that, given a string of text (possibly with punctuation and line-breaks), returns an array of the top-3 most occurring words, in descending order of the number of occurrences.

# Assumptions:
# A word is a string of letters (A to Z) optionally containing one or more apostrophes (') in ASCII.
# Apostrophes can appear at the start, middle or end of a word ('abc, abc', 'abc', ab'c are all valid)
# Any other characters (e.g. #, \, / , . ...) are not part of a word and should be treated as whitespace.
# Matches should be case-insensitive, and the words in the result should be lowercased.
# Ties may be broken arbitrarily.
# If a text contains fewer than three unique words, then either the top-2 or top-1 words should be returned, or an empty array if a text contains no words.

# 🧑🏻‍💻 regex was found here : https://stackoverflow.com/questions/31910955/regex-to-match-words-with-hyphens-and-or-apostrophes
# 🧑🏻‍💻 group by / transfor found here : https://stackoverflow.com/questions/5470725/how-to-group-by-count-in-array-without-using-loop

def top_3_words(text)
  result = []
  words = text.downcase.scan(/(?:\w|['-]\w)+/).group_by(&:itself).transform_values(&:size)
  words.sort_by {|_, value| value}.reverse.first(3).each{ |w|  result.push(w[0]) }
  result
end
