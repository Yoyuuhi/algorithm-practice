# https://leetcode.com/explore/interview/card/top-interview-questions-hard/116/array-and-strings/835/

# @param {String} s
# @param {Integer} k
# @return {Integer}
def length_of_longest_substring_k_distinct(s, k)
  return 0 if k == 0 || s.length == 0
  return 1 if s.length == 1
  
  hash = {}  
  left = 0
  result = 0
  
  for i in 0..s.length-1 do
      hash[s[i]].nil? ? hash[s[i]] = 1 : hash[s[i]] += 1
      while hash.keys.length > k do
          hash[s[left]] > 1 ? hash[s[left]] -= 1 : hash.delete(s[left])
          left += 1
      end
      result = [result, hash.values.sum].max
  end
  return result
end