# https://leetcode.com/explore/interview/card/top-interview-questions-medium/113/math/817/

# @param {String} s
# @return {Integer}
def title_to_number(s)
  hash = {}
  num = 1
  for i in 0..25 do 
      hash[(i+65).chr] = num
      num += 1
  end
  
  result = 0
  order = s.length - 1
  for i in 0..s.length-1 do
      result += hash[s[i]] * 26 ** order
      order -= 1
  end
  return result
end