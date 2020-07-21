# https://leetcode.com/explore/featured/card/top-interview-questions-easy/92/array/549/

# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  hash = Hash.new
  nums.each do |num|
      if hash[num].nil?
          hash[num] = -1
      else
          hash[num] *= -1
      end
  end
  
  hash.keys.each do |key|
      return key if hash[key] == -1
  end
end