# https://leetcode.com/explore/interview/card/top-interview-questions-hard/116/array-and-strings/838/

# @param {String} s
# @param {String} t
# @return {String}
def min_window(s, t)
  hash = {}
  hash_num = {}
  t.each_char{|c| hash[c] = 0 unless hash[c]}
  t.each_char{|c| !hash_num[c].nil? ? hash_num[c] += 1 : hash_num[c] = 1}
  result_idx = [0, s.length + 1]
  left, right = [0, 0]
  
  while right < s.length do
      left, right = find_window(left, right, hash, s, hash_num)
      result_idx = [left, right] if right - left < result_idx[1] - result_idx[0]

      until is_smaller(hash, hash_num) do
          hash[s[left]] -= 1 if hash[s[left]] 
          left += 1
      end
  end
  
  return "" if result_idx[1] > s.length
  return s[result_idx[0]...result_idx[1]]
end

def find_window(left, right, hash, s, hash_num)
  while is_smaller(hash, hash_num) do
      hash[s[right]] += 1 if hash[s[right]]
      right += 1
      return [left, right] if right > s.length
  end
  while hash[s[left]].nil? || hash[s[left]] > hash_num[s[left]] do
      hash[s[left]] -= 1 if hash[s[left]]
      left += 1
  end
  return [left, right]
end

def is_smaller(hash, hash_num)
  hash.each_key {|key| return true if hash[key] < hash_num[key]}
  return false
end