# https://leetcode.com/explore/interview/card/top-interview-questions-medium/108/trees-and-graphs/787/

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
# @return {Integer[][]}
def zigzag_level_order(root)
  return [] unless root
  results = {}
  level(root, 0, results)
  return results.values
end

def level(root, level, results)
  if results.has_key?(level)
      results[level] = (results[level].push(root.val)) if level%2 == 0
      results[level] = (results[level].unshift(root.val)) if level%2 == 1
  else
      results[level] = [root.val]
  end
  level(root.left, level+1, results) if root.left
  level(root.right, level+1, results) if root.right
end