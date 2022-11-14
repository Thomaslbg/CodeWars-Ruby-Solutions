# +1 Array

# Given an array of integers of any length, return an array that has 1 added to the value represented by the array.

# the array can't be empty
# only non-negative, single digit integers are allowed
# Return nil (or your language's equivalent) for invalid inputs.

# Examples
# Valid arrays

# [4, 3, 2, 5] would return [4, 3, 2, 6]
# [1, 2, 3, 9] would return [1, 2, 4, 0]
# [9, 9, 9, 9] would return [1, 0, 0, 0, 0]
# [0, 1, 3, 7] would return [0, 1, 3, 8]

# Invalid arrays

# [1, -9] is invalid because -9 is not a non-negative integer

# [1, 2, 33] is invalid because 33 is not a single-digit integer




def up_array(arr)
  return nil if arr.empty?

  arr.each { |n| return nil if n <0 || n > 9 }

  if arr.map(&:to_s).join.to_i == 0
    arr[-1] = 1
    return arr
  end


  zeros = []
  n = arr[0]
  idx = 0

  while n == 0 && arr[idx]
    zeros << n
    idx += 1
    n = arr[idx]
  end

  number = (arr.map(&:to_s).join.to_i + 1).digits.reverse

  zeros + number
end
