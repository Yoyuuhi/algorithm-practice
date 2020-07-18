# 561. Array Partition I
# Given an array of 2n integers, your task is to group 
# these integers into n pairs of integer, say (a1, b1), (a2, b2),
#  ..., (an, bn) which makes sum of min(ai, bi) for all i from 1 
#  to n as large as possible.

def array_pair_sum(nums)
  nums = nums.sort
  sum = 0
  i = 0
  while i < nums.length-1 do
      sum += nums[i]
      i += 2
  end
  return sum
end