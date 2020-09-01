# https://leetcode.com/explore/interview/card/top-interview-questions-medium/113/math/819/

# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
  return x if x < 2
  
  left = 2
  right = x/2
  
  while left <= right do
      num = (left + right)/2
      return num if num**2 == x
      num**2 > x ? right = num - 1 : left = num + 1
  end
  return right
end