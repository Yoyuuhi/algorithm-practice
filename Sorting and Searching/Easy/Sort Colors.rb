# https://leetcode.com/explore/interview/card/top-interview-questions-medium/110/sorting-and-searching/798/

# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def sort_colors(nums)
  left = 0
  curr = 0
  right = nums.length - 1
  while curr <= right
      if nums[curr] == 0
          nums[left], nums[curr] = nums[curr], nums[left]
          curr += 1
          left += 1
      elsif nums[curr] == 2
          nums[right], nums[curr] = nums[curr], nums[right]
          right -= 1
      elsif nums[curr] == 1
          curr += 1
      end
  end
  return nums
end