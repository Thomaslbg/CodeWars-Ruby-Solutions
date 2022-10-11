# You are given a binary tree:

# class TreeNode
#   attr_accessor :left
#   attr_accessor :right
#   attr_reader :value
# end
# Your task is to return the list with elements from tree sorted by levels, which means the root element goes first, then root children (from left to right) are second and third, and so on.

# Return empty array if root is nil.

# 🧑🏻‍💻 I used reversed the tests to understand how this would work. the tricky part was to find how to iterate each instance given it is nested in instances.

def tree_by_levels(node)
  return [] if node.nil?
  list = [node]
  result = []
  while list != []
    node = list.shift
    list << node.left if node.left
    list << node.right if node.right
    result << node.value
  end
  result
end
