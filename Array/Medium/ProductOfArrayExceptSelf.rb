# 238. Product of Array Except Self
# Given an array nums of n integers where n > 1,  
# return an array output such that output[i] is equal to 
# the product of all the elements of nums except nums[i].

def product_except_self(nums)
  i = 1
  left = []
  right = []
  left[0]=1
  right[nums.length-1]=1
  array = []
  while i < nums.length do
    left[i] = nums[i-1]*left[i-1]
    i += 1
  end

  j = nums.length-2
  while j >= 0 do
    right[j] = nums[j+1]*right[j+1]
    j -= 1
  end

  l = 0
  while l < nums.length do
    array[l] = right[l]*left[l]
    l += 1
  end
  return array
end