
# Maximum subarray sum


# The maximum sum subarray problem consists in finding the maximum sum of a contiguous subsequence in an array or list of integers:

# maxSequence [-2, 1, -3, 4, -1, 2, 1, -5, 4]
# -- should be 6: [4, -1, 2, 1]
# Easy case is when the list is made up of only positive numbers and the maximum sum is the sum of the whole array. If the list is made up of only negative numbers, return 0 instead.

# Empty list is considered to have zero greatest sum. Note that the empty list or array is also a valid sublist/subarray.

# 🧑🏻‍💻 After a while being blocked on this I used resources to solve it
# history of the problem: https://en.wikipedia.org/wiki/Maximum_subarray_problem
# ruby explanation: https://chenyunzhang.medium.com/find-the-maximum-subarray-with-ruby-approach-1174aee76c2c

def max_sequence(arr)
  return 0 if arr.empty?
  return 0 if arr.select{ |n| n < 0}.count == arr.count

  largest_sum= arr[0]
  current_sum = 0
  arr.each{ |x| largest_sum = [largest_sum, current_sum=[x, current_sum + x].max].max}
  largest_sum
end
