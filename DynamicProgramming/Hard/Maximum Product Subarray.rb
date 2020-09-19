# https://leetcode.com/explore/interview/card/top-interview-questions-hard/121/dynamic-programming/860/

# @param {Integer[]} nums
# @return {Integer}
def max_product(nums)
  min = 1
  max = 1
  result = -1.0/0.0
  nums.each do |num|
      prev_min = min
      min = [min*num, max*num, num].min
      max = [prev_min*num, max*num, num].max
      result = [max, result].max
  end
  result
end