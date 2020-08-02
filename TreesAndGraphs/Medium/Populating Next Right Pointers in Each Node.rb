# https://leetcode.com/explore/interview/card/top-interview-questions-medium/108/trees-and-graphs/789/

# Definition for Node.
# class Node
#     attr_accessor :val, :left, :right, :next
#     def initialize(val)
#         @val = val
#         @left, @right, @next = nil, nil, nil
#     end
# end

# @param {Node} root
# @return {Node}
def connect(root)
  return unless root
  result = {}
  level(root, 0, result)
  result.keys.each do |key|
      for i in 0..result[key].length-2 do
          result[key][i].next = result[key][i+1]
      end
  end
  return root
end

def level(root,level,result)
  if result.has_key?(level)
    result[level] = (result[level]<<root)
  else
    result[level] = [root]
  end

  level(root.left,level+1,result) if root.left
  level(root.right,level+1,result) if root.right
end