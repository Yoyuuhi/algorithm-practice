# https://leetcode.com/explore/interview/card/top-interview-questions-easy/127/strings/880/

# @param {Integer} x
# @return {Integer}
def reverse(x)
  x = x.to_s
  left = 0
  right = x.length-1
  while x[right] == "0" do
      x.slice!(right)
      right = x.length-1
  end
  
  while left < right do
      left += 1 if x[left] == "-"
      x[left], x[right] = x[right], x[left]
      left += 1
      right -= 1
  end
  
  return x.to_i if x.to_i < 2**31-1 && x.to_i > -2**31
  return 0
  
end