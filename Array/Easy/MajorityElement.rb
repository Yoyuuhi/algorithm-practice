# 169. Majority Element
# Given an array of size n, find the majority element. 
# The majority element is the element that appears more than ⌊ n/2 ⌋ times.

# You may assume that the array is non-empty and 
# the majority element always exist in the array.

def majority_element(nums)
  nums = nums.sort
  if nums.length.even? then
    middle = nums.length/2-1
  else
    middle = nums.length/2
  end

  return nums[middle]
end