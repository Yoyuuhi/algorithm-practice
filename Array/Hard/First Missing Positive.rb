# https://leetcode.com/explore/interview/card/top-interview-questions-hard/116/array-and-strings/832/

# @param {Integer[]} nums
# @return {Integer}
def first_missing_positive(nums)
  n = nums.length

  contains = 0
  i = 0
  while i < n do
    if nums[i] == 1 then
      contains += 1
      break
    end
    i += 1
  end

  if contains == 0 then
    return 1
  end

  if n == 1 then
    return 2
  end

  for i in 0..(n-1) do
    if nums[i] <= 0 || nums[i] > n then
      nums[i] = 1
    end
  end

  for i in 0..(n-1) do
    a = nums[i].abs
    if a == n then
      nums[0] = -nums[0].abs
    else
      nums[a] = -nums[a].abs
    end
  end

  for i in 1..(n-1) do
    if nums[i] > 0 then
      return i
    end
  end

  if nums[0] > 0 then
    return n
  end

  return n + 1
end