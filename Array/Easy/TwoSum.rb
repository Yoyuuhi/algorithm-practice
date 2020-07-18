# 1. Two Sum
# Given an array of integers, return indices of the two numbers such that they add up to a specific target.
# You may assume that each input would have exactly one solution, and you may not use the same element twice.

def two_sum(nums, target)
  hash = {}
  for i in 0..(nums.length-1) do
    hash[i] = target - nums[i]
  end
  
  for i in 0..(nums.length-1) do
    if hash.has_value?(nums[i]) && hash.key(nums[i])!=i then
      return [i, hash.key(nums[i])]
    end
  end
end