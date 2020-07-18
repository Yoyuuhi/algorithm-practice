# 148. Sort List
# Sort a linked list in O(n log n) time using constant space complexity.

# Bubble sorting aldorithm
## array用, linked list未完成
def sort_list(head)
  sorted = head.length
  while sorted > 0 do
    if_reversed = 0
    for i in 0..sorted-2 do
      if head[i] > head[i+1] then
        temp = head[i]
        head[i] = head[i+1]
        head[i+1] = temp
        if_reversed = 1
      end
    end
    sorted -= 1
    if if_reversed == 0 then
      return head
    end
  end
  return head
end