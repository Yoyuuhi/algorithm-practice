# https://leetcode.com/explore/interview/card/top-interview-questions-medium/113/math/815/

# @param {Integer} n
# @return {Boolean}
def is_happy(n)
  nums = {}
  nums[n] = 1
  
  while n != 1 do
      n = n.digits.inject(0) {|result, item| result + item.to_i**2 }
      nums[n] != 1 ? nums[n] = 1 : (return false)
  end
  return true
end