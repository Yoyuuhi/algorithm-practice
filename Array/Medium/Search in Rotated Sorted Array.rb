# https://leetcode.com/problems/search-in-rotated-sorted-array/

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  left = 0
  right = nums.length - 1
  while left <= right do
      mid = (left + right)/2
      return mid if nums[mid] == target
      
      if nums[mid] >= nums[left]
          if nums[mid] > target && nums[left] <= target
              right = mid - 1
          else
              left = mid + 1
          end
      else
          if nums[mid] <= target && nums[left] > target 
              left = mid + 1
          else
              right = mid - 1
          end
      end
  end
  
  return -1
end