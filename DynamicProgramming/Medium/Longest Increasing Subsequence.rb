# https://leetcode.com/explore/interview/card/top-interview-questions-medium/111/dynamic-programming/810/

# @param {Integer[]} nums
# @return {Integer}
def length_of_lis(nums)
  return 0 if nums.empty?
  dp = Array.new(nums.length, 1)
  for i in 0..nums.length-1 do
      for j in 0..i-1 do
          dp[i] = [dp[i], dp[j]+1].max if nums[i] > nums[j]
      end
  end
  return dp.max
end