# https://leetcode.com/explore/interview/card/top-interview-questions-easy/127/strings/884/

# @param {String} str
# @return {Integer}
def my_atoi(str)
  result = ""
  index = 0
  mark = 0
  while str[index] == " " do
      index += 1
  end

  if str[index] == "-" || str[index] == "+"
      result << str[index]
      index += 1
  end
  
  return 0 if !/\A[0-9]+\z/.match?(str[index])
  
  while /\A[0-9]+\z/.match?(str[index]) do
      result << str[index]
      index += 1
  end
  
  return 2**31-1 if result.to_i>2**31-1
  return -2**31 if result.to_i<-2**31
  return result.to_i
end