# https://leetcode.com/problems/combination-sum/

# @param {Integer[]} candidates
# @param {Integer} target
# @return {Integer[][]}
def combination_sum(candidates, target)
  results = []
  candidates = candidates.sort

  for i in 0...candidates.length do
      calculate(candidates, target, 0, i, [], results) if candidates[i] <= target
  end
  return results
end

def calculate(candidates, target, sum, index, result, results)
  sum += candidates[index]
  result.push(candidates[index])
  
  results.push(result) if sum == target
  for i in index...candidates.length do
      calculate(candidates, target, sum, i, result.dup, results) if sum + candidates[i] <= target
  end
end