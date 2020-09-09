# https://leetcode.com/explore/interview/card/top-interview-questions-hard/116/array-and-strings/829/

# @param {Integer[]} a
# @param {Integer[]} b
# @param {Integer[]} c
# @param {Integer[]} d
# @return {Integer}
def four_sum_count(a, b, c, d)
  hash = {}
  l = a.length - 1
  for i in 0..l do
      for j in 0..l do
          hash[c[i] + d[j]] = hash[c[i] + d[j]] ? hash[c[i] + d[j]] + 1 : 1
      end
  end
  
  count = 0
  for i in 0..l do
      for j in 0..l do
          count += hash[-(a[i] + b[j])] if hash[-(a[i] + b[j])]
      end
  end
  return count
end