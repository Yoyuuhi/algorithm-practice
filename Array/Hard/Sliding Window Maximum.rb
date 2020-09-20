# https://leetcode.com/explore/interview/card/top-interview-questions-hard/116/array-and-strings/837/

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def max_sliding_window(nums, k)
  n = nums.length
  return [0] if n * k == 0
  return nums if k == 1
  
  deq = []
  max_idx = 0
  for i in 0..k-1 do
      clean_deque(i, k, deq, nums)
      deq.push(i)
      max_idx = i if nums[i] > nums[max_idx]
  end
  output = []
  output << nums[max_idx]
  
  for i in k..n-1 do
      clean_deque(i, k, deq, nums)
      deq.push(i)
      output.push(nums[deq[0]])
  end
  return output
end

def clean_deque(i, k, deq, nums)
  deq.shift if !deq.empty? && deq[0] == i - k
  while !deq.empty? && nums[i] > nums[deq[-1]] do
      deq.pop
  end
end