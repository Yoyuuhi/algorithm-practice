# https://leetcode.com/explore/interview/card/top-interview-questions-easy/127/strings/882/

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  hash1 = Hash.new
  hash2 = Hash.new
  
  s.each_char do |c|
      if hash1[c].nil?
          hash1[c] = 0
      else
          hash1[c]+=1
      end
  end
      
  t.each_char do |c|
      if hash2[c].nil?
          hash2[c] = 0
      else
          hash2[c]+=1
      end
  end
  
  return hash1 == hash2
end