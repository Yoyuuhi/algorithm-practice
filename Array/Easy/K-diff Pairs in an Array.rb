# https://leetcode.com/problems/k-diff-pairs-in-an-array/

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def find_pairs(nums, k)
  nums = nums.sort
  return 0 if k < 0
  left = 0
  right = 0
  length = nums.length
  
  count = 0
  while left < length do
      while left == right || right < length && nums[right] - nums[left] < k do
          right += 1
      end
      break if right >= length
      
      p [nums[right],nums[left],count]
      count += 1 if nums[right] - nums[left] == k
      while nums[left] == nums[left+1] do
          left += 1
      end
      left += 1
  end
  
  return count
end