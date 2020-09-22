# https://leetcode.com/explore/interview/card/top-interview-questions-hard/117/linked-list/839/

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode[]} lists
# @return {ListNode}
def merge_k_lists(lists)
  arrayLists = []
  for i in 0..lists.length-1 do
      node = lists[i]
      arrayLists[i] = []
      while node do
          arrayLists[i].push(node.val)
          node = node.next
      end
  end
  
  while arrayLists[1] do
      temp = []
      for i in 0..(arrayLists.length-1)/2 do
          temp.push(mergeSorted(arrayLists[2*i], arrayLists[2*i+1]))
      end
      arrayLists = temp
  end

  return [] if arrayLists[0].nil?
  head = ListNode.new(arrayLists[0].shift)
  node = head
  while !arrayLists[0].empty? do
      node.next = ListNode.new(arrayLists[0].shift)
      node = node.next
  end
  return head
end

def mergeSorted(array1, array2)
  array = []
  array2 = [] if array2.nil?
  while !array1.empty? || !array2.empty? do
      if !array1.empty? && (array2.empty? || array1[0] < array2[0])
          array.push(array1.shift)
      else
          array.push(array2.shift)
      end
  end
  return array
end