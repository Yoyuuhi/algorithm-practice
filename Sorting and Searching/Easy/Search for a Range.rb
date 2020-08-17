# https://leetcode.com/explore/interview/card/top-interview-questions-medium/110/sorting-and-searching/802/

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def search_range(nums, target)
  return [-1, -1] if nums.length == 0
  
  if nums.length == 1
      return [-1, -1] if nums[0] != target
      return [0, 0]
  end
  
  if find_limit_index(nums, target, 1)
      return [find_limit_index(nums, target, true)[0], find_limit_index(nums, target, false)[0]]
  else
      return [-1, -1]
  end
end

def find_limit_index(nums, target, if_left)
  left = 0
  right = nums.length - 1
  while left < right do
      mid = (left + right)/2
      if nums[mid] < target || !if_left && nums[mid+1] == target
          left = mid + 1
      else
          right = mid
      end
      break[left] if if_left && nums[left] == target
      break[left] if nums[left] == target && nums[left+1] != target
  end
end