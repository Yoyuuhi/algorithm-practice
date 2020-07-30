# https://leetcode.com/explore/interview/card/top-interview-questions-medium/107/linked-list/783/

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
def add_two_numbers(l1, l2)
  result = ListNode.new
  node = result
  while !l1.nil? || !l2.nil? do
      if l1.nil?
          node.next = ListNode.new(1) if node.val + l2.val >= 10
          node.next = ListNode.new if node.val + l2.val < 10 && !l2.next.nil?
          node.val = (node.val + l2.val)%10
          l2 = l2.next
      elsif l2.nil?
          node.next = ListNode.new(1) if node.val + l1.val>= 10
          node.next = ListNode.new if node.val + l1.val < 10 && !l1.next.nil?
          node.val = (node.val + l1.val)%10
          l1 = l1.next
      else
          node.next = ListNode.new(1) if node.val + l1.val + l2.val >= 10
          node.next = ListNode.new if node.val + l1.val + l2.val < 10 && (!l1.next.nil? || !l2.next.nil?)
          node.val = (node.val + l1.val + l2.val)%10
          l1 = l1.next
          l2 = l2.next
      end
      node = node.next
  end
  return result
end