# https://leetcode.com/explore/interview/card/top-interview-questions-medium/111/dynamic-programming/807/

# @param {Integer[]} nums
# @return {Boolean}
def can_jump(nums)
  minGood = nums.length-1
  (nums.length-2).downto(0) {|i| minGood = i if i + nums[i] >= minGood} 
  return minGood == 0? true:false
end