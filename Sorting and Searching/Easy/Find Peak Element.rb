# https://leetcode.com/explore/interview/card/top-interview-questions-medium/110/sorting-and-searching/801/

# @param {Integer[]} nums
# @return {Integer}
def find_peak_element(nums)
  left = 0
  right = nums.length - 1
  while left < right do
      mid = (left + right)/2
      if nums[mid] < nums[mid+1]
          left = mid + 1
      else
          right = mid
      end
  end
  return right
end