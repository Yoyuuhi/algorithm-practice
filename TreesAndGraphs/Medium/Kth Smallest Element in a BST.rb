# https://leetcode.com/explore/interview/card/top-interview-questions-medium/108/trees-and-graphs/790/

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @param {Integer} k
# @return {Integer}
def kth_smallest(root, k)
  return [] unless root
  values = []
  traversal(root, values, k)
  return values[-1]
end

def traversal(root, values, k)
  traversal(root.left, values, k) if root.left && values.length < k
  values << root.val unless values.length == k
  traversal(root.right, values, k) if root.right && values.length < k
end