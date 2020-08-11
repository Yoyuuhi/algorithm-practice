# https://leetcode.com/explore/interview/card/top-interview-questions-medium/110/sorting-and-searching/804/

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  s = 0
  e = nums.length - 1
  while s <= e do
    mid = (s + e)/2
    if nums[mid] == target then
      return mid
    elsif nums[s] == target then
      return s
    elsif nums[s] <= nums[mid] then
      if nums[e] < target && target < nums[mid] then
        e = mid - 1
      elsif nums[e] == target
        return e
      else
        s = mid + 1
      end
    else
      if nums[mid] < target && target < nums[e] then
        s = mid + 1
      elsif target == nums[e]
        return e
      else
        e = mid - 1
      end
    end
  end
  return -1
end