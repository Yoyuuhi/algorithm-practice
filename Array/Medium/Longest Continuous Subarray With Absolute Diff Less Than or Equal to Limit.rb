# https://leetcode.com/problems/longest-continuous-subarray-with-absolute-diff-less-than-or-equal-to-limit/

# @param {Integer[]} nums
# @param {Integer} limit
# @return {Integer}
def longest_subarray(nums, limit)
  left = 0
  right = 0
  
  size = 1
  max = nums[0]
  min = nums[0]
  
  while right < nums.length do
      if max - min > limit
          left += 1
           if min == nums[left-1]
              min = nums[left..right].min
           end
           
           if max == nums[left-1]
               max = nums[left..right].max
           end
      else
          size = [size, right - left + 1].max
      end
      right += 1
      max = [max, nums[right]].max if nums[right]
      min = [min, nums[right]].min if nums[right]
  end
  return size
end