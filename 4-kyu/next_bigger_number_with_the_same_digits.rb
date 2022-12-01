
# Next bigger number with the same digits


# Create a function that takes a positive integer and returns the next bigger number that can be formed by rearranging its digits. For example:

# 12 ==> 21
# 513 ==> 531
# 2017 ==> 2071
# nextBigger(num: 12)   // returns 21
# nextBigger(num: 513)  // returns 531
# nextBigger(num: 2017) // returns 2071
# If the digits can't be rearranged to form a bigger number, return -1 (or nil in Swift):

# 9 ==> -1
# 111 ==> -1
# 531 ==> -1
# nextBigger(num: 9)   // returns nil
# nextBigger(num: 111) // returns nil
# nextBigger(num: 531) // returns nil

def next_bigger(n)
  return -1 if n.digits.uniq.count == 1 || n.digits == (0..9).to_a
  arr = n.digits

  # this blocks is not resources optimal but works
  if arr.count < 9
    combinations = arr.permutation(arr.count).to_a.map(&:join).map(&:to_i).sort.uniq
    return combinations[combinations.index(n)+1]
  end

  # if big number we take a sample at the end of the number
  start = n.digits.reverse[0..-7].join.to_s
  last2 = ""
  last = n.digits.reverse[-6..-1]
  if last.uniq.count == 1
    last2 = n.digits.reverse[-4..-1].join.to_s
    last = n.digits.reverse[-11..-5]
    start = n.digits.reverse[0..-12].join.to_s
  end
  combinations = last.permutation(last.count).to_a.map(&:join).map(&:to_i).sort.uniq
  num = combinations[combinations.index(last.join.to_i)+1].to_s
  num = "0" * (last.count - num.length) + num.to_s if num.length < last.count
  return (start + num + last2).to_i
 end
