# https://leetcode.com/explore/interview/card/top-interview-questions-hard/116/array-and-strings/833/

# @param {Integer[]} nums
# @return {Integer}
def longest_consecutive(nums)
  nums = nums.sort
  i = 0
  if nums[0] == nil then
    longest = 0
  else
    longest = 1
  end
    count = 1
  while i < nums.length - 1 do
    if nums[i+1] == nums[i] + 1 then
      count += 1
      longest = [longest, count].max
    elsif nums[i+1] != nums[i]
      count = 1
    end
    i += 1
  end
  return longest
end