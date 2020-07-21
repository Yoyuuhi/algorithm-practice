# https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/674/

def intersect(nums1, nums2)
  nums1, nums2 = nums2, nums1 if nums1.length > nums2.length
  nums1 = nums1.sort
  nums2 = nums2.sort
  result = []
  
  @index = 0
  nums1.each do |num|
      compare(num, nums2, result)
  end
  return result
end
  
def compare(num, nums2, result)
  if num == nums2[@index]
      @index += 1
      result << num
  elsif @index < nums2.length && num > nums2[@index]
      @index += 1
      compare(num, nums2, result)
  end
end