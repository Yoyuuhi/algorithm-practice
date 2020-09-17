# https://leetcode.com/explore/interview/card/top-interview-questions-hard/116/array-and-strings/834/

# @param {Integer[]} nums
# @return {Integer}
def find_duplicate(nums)
  for i in 0..nums.length-1 do
    if nums[nums[i].abs] < 0 then
      return nums[i].abs
    else
      nums[nums[i].abs] *= -1
    end
  end
end