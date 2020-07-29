# https://leetcode.com/explore/interview/card/top-interview-questions-medium/103/array-and-strings/776/

# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  nums = nums.sort
  results = []
  for i in 0..(nums.length - 3 ) do
    target = (-1)*nums[i]
    j = i+1
    k = nums.length - 1
    while j < k do
      if (nums[j]+nums[k]) > target
        k -= 1
      elsif (nums[j]+nums[k]) < target
        j += 1
      else
        result = [nums[i],nums[j],nums[k]]
        results << result
        j += 1
      end
    end
  end
  return results.uniq
end