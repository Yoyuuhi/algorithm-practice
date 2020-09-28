# https://leetcode.com/problems/running-sum-of-1d-array/

# @param {Integer[]} nums
# @return {Integer[]}
def running_sum(nums)
  for i in 1...nums.length do
      nums[i] += nums[i-1]
  end
  return nums
end