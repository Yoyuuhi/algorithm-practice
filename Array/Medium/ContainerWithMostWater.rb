# 11. Container With Most Water
# Given n non-negative integers a1, a2, ..., an , where each represents a point at coordinate (i, ai). n vertical lines are drawn such that the two endpoints of line i is at (i, ai) and (i, 0). Find two lines, which together with x-axis forms a container, such that the container contains the most water.

def max_area(height)
  i = 0
  j = height.length - 1
  maxArea = 0
  
  while i < j
    area = (height[i]+height[j])*(j-i)/2-(height[i]-height[j]).abs*(j-i)/2
    maxArea = [maxArea, area].max
  
    if height[i] > height[j]
      j -= 1
    else
      i += 1
    end
  end
  maxArea
end