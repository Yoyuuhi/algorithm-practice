# https://leetcode.com/explore/interview/card/top-interview-questions-medium/114/others/822/

# @param {Integer} a
# @param {Integer} b
# @return {Integer}
def get_sum(a, b)
  x = a.abs
  y = b.abs
  
  return get_sum(b, a) if x < y
  
  sign = a > 0 ? 1:-1
  
  if a * b >= 0
      while y != 0
          answer = x ^ y
          carry = (x & y) << 1
          x = answer
          y = carry
      end
  else
      while y != 0
          answer = x ^ y
          borrow = ((~x) & y) << 1
          x = answer
          y = borrow
      end
  end
  return x * sign
end