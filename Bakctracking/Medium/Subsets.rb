# https://leetcode.com/explore/interview/card/top-interview-questions-medium/109/backtracking/796/

# @param {Integer[]} nums
# @return {Integer[][]}
def subsets(nums)
  if nums == [] then
    return []
  end

  if nums.length == 1 then
    return [[],[nums[0]]]
  end

  array = []
  condition = Array.new(nums.length,0)
  while condition[-1] != 2 do
    child = []
    plusone(condition)
    for i in 0..condition.length-1 do
      if condition[i] == 1 then
        child.push nums[i]
      end
    end
    array.push child
  end
  return array
end

def plusone(condition)
  if condition[0] == 0 then
    condition[0] = 1
  elsif condition[0] == 1 then
    condition[0] = 0
    condition[1] += 1
  end

  for i in 1..condition.length-2 do
    if condition[i] == 2 then
      condition[i] = 0
      condition[i+1] += 1
    end
  end
  return condition
end