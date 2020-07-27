# https://leetcode.com/explore/interview/card/top-interview-questions-easy/93/linked-list/771/

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)
  return if l1.nil? && l2.nil?
  node = ListNode.new
  currentNode = node
  while !l1.nil? || !l2.nil? do
      if !l1.nil? && !l2.nil?
          if l1.val <= l2.val
              currentNode.val = l1.val
              l1 = l1.next
          else
              currentNode.val = l2.val
              l2 = l2.next
          end
      elsif !l1.nil?
          currentNode.val = l1.val
          l1 = l1.next
      else
          currentNode.val = l2.val
          l2 = l2.next
      end
      
      if !l1.nil? || !l2.nil?
          currentNode.next = ListNode.new
          currentNode = currentNode.next
      end
  end
  return node
end