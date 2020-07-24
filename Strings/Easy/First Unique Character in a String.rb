# https://leetcode.com/explore/interview/card/top-interview-questions-easy/127/strings/881/

# @param {String} s
# @return {Integer}
def first_uniq_char(s)
  return -1 if s == ""
  hash = Hash.new()
  s.each_char.with_index do |c, index|
      if hash[c].nil?
          hash[c] = index
      elsif hash[c] >= 0
          hash[c] = -index - 1
      end
  end
  hash.keys.each do |key|
      return hash[key] if hash[key] >= 0
  end
  return -1
end