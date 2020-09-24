# https://leetcode.com/problems/minimum-size-subarray-sum/

# @param {Integer} s
# @param {Integer[]} nums
# @return {Integer}
def min_sub_array_len(s, nums)
  left = 0
  right = 0
  length = nums.length
  subarray = [0, length]
  
  sum = nums[0]
  while right < length do
      while sum < s && right < length do
          right += 1
          sum += nums[right] if nums[right]
      end
      
      while sum >= nums[left] + s do
          sum -= nums[left]
          left += 1
      end
      subarray = [left, right] if right - left < subarray[1] - subarray[0]
      break if left == right
      sum -= nums[left]
      left += 1
  end
  
  return 0 if subarray[1] == length
  return subarray[1] - subarray[0] + 1
end