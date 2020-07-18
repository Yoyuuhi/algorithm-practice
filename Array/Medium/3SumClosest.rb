# 16. 3Sum Closest
# Given an array nums of n integers and an integer target, 
# find three integers in nums such that the sum is closest to target. 
# Return the sum of the three integers. You may assume that each input 
# would have exactly one solution.

def three_sum_closest(nums, target)
  nums = nums.sort
  sum = nums[0] + nums[1] + nums[2]
  diff = (sum - target).abs
  i = 0
  while i < (nums.length - 2) do
    left = i + 1
    right = nums.length - 1
    while left < right do
      if (nums[i]+nums[left]+nums[right] - target).abs < diff then
        sum = nums[i]+nums[left]+nums[right]
      end
      diff = [diff, (nums[i]+nums[left]+nums[right] - target).abs].min
      if (nums[i]+nums[left]+nums[right])<=target then
        left += 1
      elsif (nums[i]+nums[left]+nums[right])==target then
        sum = nums[i]+nums[left]+nums[right]
        return sum
      else
        right -= 1
      end
    end
    i += 1
  end
  return sum
end