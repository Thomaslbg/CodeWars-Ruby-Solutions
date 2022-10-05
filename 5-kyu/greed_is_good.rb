# Greed is a dice game played with five six-sided dice. Your mission, should you choose to accept it, is to score a throw according to these rules. You will always be given an array with five six-sided dice values.

#  Three 1's => 1000 points
#  Three 6's =>  600 points
#  Three 5's =>  500 points
#  Three 4's =>  400 points
#  Three 3's =>  300 points
#  Three 2's =>  200 points
#  One   1   =>  100 points
#  One   5   =>   50 point
# A single die can only be counted once in each roll. For example, a given "5" can only count as part of a triplet (contributing to the 500 points) or as a single 50 points, but not both in the same roll.

# 🧑🏻‍💻 Not elegant but working


def score( dice )
  # Fill me in!
  p dice
  score = 0
  h = dice.group_by(&:itself).transform_values(&:count)
  score += h.key(3) * 100  if h.key(3)
  score += h.key(4) * 100  if h.key(4)
  score += h.key(5) * 100  if h.key(5)
  score += 900 if h.key(3) == 1 || h.key(4) == 1 || h.key(5) == 1
  score += dice.count(5) * 50 unless h.key(3) == 5 || h.key(4) == 5 || h.key(5) == 5
  score += dice.count(1) * 100 unless h.key(3) == 1 || h.key(4) == 1 || h.key(5) == 1
  score += 200 if h.key(5) == 1
  score += 100 if h.key(4) == 1 || h.key(5) == 5
  score += 50 if h.key(4) == 5
  return score
end
