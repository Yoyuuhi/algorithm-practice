# https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/559/

# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
  i = 2
  if digits[-1]!=9 then
    digits[-1] += 1
    return digits
  else
    digits[-1] = 0
    while i <= digits.length+1 do
      if digits[-i] != nil && digits[-i] != 9
        digits[-i] += 1
        return digits
      elsif digits[-i] == nil
        digits = digits.unshift(1)
        return digits
      elsif digits[-i] == 9
        digits[-i] = 0
      end
      i += 1
    end
  end
end