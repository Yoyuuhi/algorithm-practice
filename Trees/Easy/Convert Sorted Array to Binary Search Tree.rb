# https://leetcode.com/explore/interview/card/top-interview-questions-easy/94/trees/631/

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[]} nums
# @return {TreeNode}
def sorted_array_to_bst(nums)
  mid = (nums.length - 1)/2
  node = TreeNode.new(nums[mid])
  node.left = sorted_array_to_bst(nums[0..mid-1]) if mid > 0
  node.right = sorted_array_to_bst(nums[mid+1..-1]) if mid < nums.length - 1
  return node
end