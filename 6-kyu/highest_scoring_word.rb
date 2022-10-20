
# Highest Scoring Word
# Given a string of words, you need to find the highest scoring word.

# Each letter of a word scores points according to its position in the alphabet: a = 1, b = 2, c = 3 etc.

# You need to return the highest scoring word as a string.

# If two words score the same, return the word that appears earliest in the original string.

# All letters will be lowercase and all inputs will be valid.

def high(x)
  alph = ("a".."z").to_a
  arr = x.split(" ")
  arr_split = arr.map{ |s| s.split("") }
  arr_split.each do |w|
    w.map!{ |l| alph.find_index(l) + 1}
  end
  arr_split.map!(&:sum)
  arr[arr_split.find_index(arr_split.max)]
end
