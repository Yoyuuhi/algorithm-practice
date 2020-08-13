# https://leetcode.com/explore/interview/card/top-interview-questions-medium/110/sorting-and-searching/799/

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
  hash = {}
  results = []
  nums.each do |num|
      hash[num] += 1 if hash[num]
      hash[num] = 1 unless hash[num]
  end
  hash = hash.to_a.sort{|a, b| -a[1] <=> -b[1]}
  for i in 0..k-1 do
      results << hash[i][0]
  end
  return results
end