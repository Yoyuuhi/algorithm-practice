# 53. Maximum Subarray
# Given an integer array nums, find the contiguous subarray 
# (containing at least one number) which has the largest sum 
# and return its sum.

def max_sub_array(nums)
  n = nums.length
  maxSum = nums[0]
  i = 1
  while i<n do
    maxSum = [nums[i],maxSum].max
    if nums[i-1] > 0 then
      nums[i] += nums[i-1]
      maxSum = [nums[i],maxSum].max
    end
    i += 1
  end
  return maxSum
end