# 42. Trapping Rain Water
# Given n non-negative integers representing an elevation map 
# where the width of each bar is 1, compute how much water it is able to 
# trap after raining.

def trap(height)
  left = 0
  right = height.length-1
  area = 0
  leftMax = 0
  rightMax = 0
  while left < right do
    if height[left] < height[right] then
      leftMax = [height[left],leftMax].max
      area += leftMax - height[left]
      left = left + 1
    elsif height[left] >= height[right] then
      rightMax = [height[right],rightMax].max
      area += rightMax - height[right]
      right = right - 1
    end
  end
  return area
end