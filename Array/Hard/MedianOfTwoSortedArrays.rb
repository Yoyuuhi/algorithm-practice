# 4. Median of Two Sorted Arrays
# There are two sorted arrays nums1 and nums2 of size m and n respectively.
# Find the median of the two sorted arrays. The overall run time complexity should be O(log (m+n)).
# You may assume nums1 and nums2 cannot be both empty.

def find_median_sorted_arrays(nums1, nums2)
  nums = nums1 + nums2
  nums = nums.sort
  if nums.length.even? then
    idx = nums.length/2
    return result = (nums[idx]+nums[idx-1])/2.0
  else
    idx = (nums.length-1)/2
    return result = nums[idx].to_f
  end
end